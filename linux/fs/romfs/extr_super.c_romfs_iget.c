
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int umode_t ;
struct super_block {int dummy; } ;
struct romfs_inode_info {unsigned long i_metasize; unsigned long i_dataoffset; } ;
struct romfs_inode {int spec; int size; int next; } ;
struct TYPE_8__ {int * a_ops; } ;
struct TYPE_7__ {scalar_t__ tv_nsec; scalar_t__ tv_sec; } ;
struct TYPE_6__ {scalar_t__ tv_nsec; scalar_t__ tv_sec; } ;
struct TYPE_5__ {scalar_t__ tv_nsec; scalar_t__ tv_sec; } ;
struct inode {int i_state; unsigned long i_size; int i_mode; TYPE_4__ i_data; int * i_op; int * i_fop; TYPE_3__ i_ctime; TYPE_2__ i_atime; TYPE_1__ i_mtime; } ;
typedef int ri ;


 int EIO ;
 int ENOMEM ;
 struct inode* ERR_PTR (int) ;
 scalar_t__ IS_ERR_VALUE (unsigned long) ;
 int I_NEW ;
 int MKDEV (unsigned int,unsigned int) ;

 unsigned int ROMFH_EXEC ;
 unsigned int ROMFH_HRD ;
 unsigned long ROMFH_MASK ;
 unsigned long ROMFH_PAD ;

 unsigned long ROMFH_SIZE ;

 unsigned int ROMFH_TYPE ;
 struct romfs_inode_info* ROMFS_I (struct inode*) ;
 int ROMFS_MAXFN ;
 int S_IRWXUGO ;
 int S_IXUGO ;
 unsigned long be32_to_cpu (int ) ;
 struct inode* iget_locked (struct super_block*,unsigned long) ;
 int init_special_inode (struct inode*,int ,int ) ;
 int inode_nohighmem (struct inode*) ;
 int page_symlink_inode_operations ;
 int pr_err (char*,unsigned long) ;
 int romfs_aops ;
 int romfs_dev_read (struct super_block*,unsigned long,struct romfs_inode*,int) ;
 unsigned long romfs_dev_strnlen (struct super_block*,unsigned long,int ) ;
 int romfs_dir_inode_operations ;
 int romfs_dir_operations ;
 int * romfs_modemap ;
 int romfs_ro_fops ;
 int set_nlink (struct inode*,int) ;
 int unlock_new_inode (struct inode*) ;

__attribute__((used)) static struct inode *romfs_iget(struct super_block *sb, unsigned long pos)
{
 struct romfs_inode_info *inode;
 struct romfs_inode ri;
 struct inode *i;
 unsigned long nlen;
 unsigned nextfh;
 int ret;
 umode_t mode;



 for (;;) {
  ret = romfs_dev_read(sb, pos, &ri, sizeof(ri));
  if (ret < 0)
   goto error;



  nextfh = be32_to_cpu(ri.next);
  if ((nextfh & ROMFH_TYPE) != ROMFH_HRD)
   break;

  pos = be32_to_cpu(ri.spec) & ROMFH_MASK;
 }


 nlen = romfs_dev_strnlen(sb, pos + ROMFH_SIZE, ROMFS_MAXFN);
 if (IS_ERR_VALUE(nlen))
  goto eio;


 i = iget_locked(sb, pos);
 if (!i)
  return ERR_PTR(-ENOMEM);

 if (!(i->i_state & I_NEW))
  return i;


 inode = ROMFS_I(i);
 inode->i_metasize = (ROMFH_SIZE + nlen + 1 + ROMFH_PAD) & ROMFH_MASK;
 inode->i_dataoffset = pos + inode->i_metasize;

 set_nlink(i, 1);
 i->i_size = be32_to_cpu(ri.size);
 i->i_mtime.tv_sec = i->i_atime.tv_sec = i->i_ctime.tv_sec = 0;
 i->i_mtime.tv_nsec = i->i_atime.tv_nsec = i->i_ctime.tv_nsec = 0;


 mode = romfs_modemap[nextfh & ROMFH_TYPE];

 switch (nextfh & ROMFH_TYPE) {
 case 130:
  i->i_size = ROMFS_I(i)->i_metasize;
  i->i_op = &romfs_dir_inode_operations;
  i->i_fop = &romfs_dir_operations;
  if (nextfh & ROMFH_EXEC)
   mode |= S_IXUGO;
  break;
 case 129:
  i->i_fop = &romfs_ro_fops;
  i->i_data.a_ops = &romfs_aops;
  if (nextfh & ROMFH_EXEC)
   mode |= S_IXUGO;
  break;
 case 128:
  i->i_op = &page_symlink_inode_operations;
  inode_nohighmem(i);
  i->i_data.a_ops = &romfs_aops;
  mode |= S_IRWXUGO;
  break;
 default:

  nextfh = be32_to_cpu(ri.spec);
  init_special_inode(i, mode, MKDEV(nextfh >> 16,
        nextfh & 0xffff));
  break;
 }

 i->i_mode = mode;

 unlock_new_inode(i);
 return i;

eio:
 ret = -EIO;
error:
 pr_err("read error for inode 0x%lx\n", pos);
 return ERR_PTR(ret);
}
