
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int umode_t ;
struct TYPE_10__ {scalar_t__ tv_nsec; int tv_sec; } ;
struct TYPE_9__ {scalar_t__ tv_nsec; int tv_sec; } ;
struct TYPE_8__ {scalar_t__ tv_nsec; int tv_sec; } ;
struct inode {int i_blocks; int i_sb; int i_ino; scalar_t__ i_size; int i_gid; int i_uid; TYPE_4__ i_atime; TYPE_3__ i_mtime; TYPE_2__ i_ctime; } ;
struct hpfs_dirent {int read_only; int archive; int hidden; void* creation_date; void* read_date; void* write_date; void* fnode; } ;
struct fnode {unsigned int len; void* up; int name; } ;
struct TYPE_7__ {unsigned char* name; unsigned int len; } ;
struct dentry {TYPE_1__ d_name; } ;
struct buffer_head {int dummy; } ;
typedef int fnode_secno ;
typedef int dev_t ;
struct TYPE_12__ {scalar_t__ i_ea_size; int i_parent_dir; int i_dno; } ;
struct TYPE_11__ {int sb_eas; } ;


 int EEXIST ;
 int EINVAL ;
 int ENOENT ;
 int ENOSPC ;
 int EPERM ;
 int brelse (struct buffer_head*) ;
 void* cpu_to_le32 (int ) ;
 int current_fsgid () ;
 int current_fsuid () ;
 int d_instantiate (struct dentry*,struct inode*) ;
 int hpfs_add_dirent (struct inode*,unsigned char const*,unsigned int,struct hpfs_dirent*) ;
 struct fnode* hpfs_alloc_fnode (int ,int ,int *,struct buffer_head**) ;
 int hpfs_chk_name (unsigned char const*,unsigned int*) ;
 int hpfs_free_sectors (int ,int ,int) ;
 TYPE_6__* hpfs_i (struct inode*) ;
 int hpfs_init_inode (struct inode*) ;
 int hpfs_lock (int ) ;
 TYPE_5__* hpfs_sb (int ) ;
 int hpfs_unlock (int ) ;
 int hpfs_update_directory_times (struct inode*) ;
 int hpfs_write_inode_nolock (struct inode*) ;
 int init_special_inode (struct inode*,int,int ) ;
 int insert_inode_hash (struct inode*) ;
 int iput (struct inode*) ;
 int le32_to_cpu (void*) ;
 int local_get_seconds (int ) ;
 int local_to_gmt (int ,int ) ;
 int mark_buffer_dirty (struct buffer_head*) ;
 int memcpy (int ,unsigned char const*,int) ;
 int memset (struct hpfs_dirent*,int ,int) ;
 struct inode* new_inode (int ) ;
 int set_nlink (struct inode*,int) ;

__attribute__((used)) static int hpfs_mknod(struct inode *dir, struct dentry *dentry, umode_t mode, dev_t rdev)
{
 const unsigned char *name = dentry->d_name.name;
 unsigned len = dentry->d_name.len;
 struct buffer_head *bh;
 struct fnode *fnode;
 fnode_secno fno;
 int r;
 struct hpfs_dirent dee;
 struct inode *result = ((void*)0);
 int err;
 if ((err = hpfs_chk_name(name, &len))) return err==-ENOENT ? -EINVAL : err;
 if (hpfs_sb(dir->i_sb)->sb_eas < 2) return -EPERM;
 hpfs_lock(dir->i_sb);
 err = -ENOSPC;
 fnode = hpfs_alloc_fnode(dir->i_sb, hpfs_i(dir)->i_dno, &fno, &bh);
 if (!fnode)
  goto bail;
 memset(&dee, 0, sizeof dee);
 if (!(mode & 0222)) dee.read_only = 1;
 dee.archive = 1;
 dee.hidden = name[0] == '.';
 dee.fnode = cpu_to_le32(fno);
 dee.creation_date = dee.write_date = dee.read_date = cpu_to_le32(local_get_seconds(dir->i_sb));

 result = new_inode(dir->i_sb);
 if (!result)
  goto bail1;

 hpfs_init_inode(result);
 result->i_ino = fno;
 hpfs_i(result)->i_parent_dir = dir->i_ino;
 result->i_ctime.tv_sec = result->i_mtime.tv_sec = result->i_atime.tv_sec = local_to_gmt(dir->i_sb, le32_to_cpu(dee.creation_date));
 result->i_ctime.tv_nsec = 0;
 result->i_mtime.tv_nsec = 0;
 result->i_atime.tv_nsec = 0;
 hpfs_i(result)->i_ea_size = 0;
 result->i_uid = current_fsuid();
 result->i_gid = current_fsgid();
 set_nlink(result, 1);
 result->i_size = 0;
 result->i_blocks = 1;
 init_special_inode(result, mode, rdev);

 r = hpfs_add_dirent(dir, name, len, &dee);
 if (r == 1)
  goto bail2;
 if (r == -1) {
  err = -EEXIST;
  goto bail2;
 }
 fnode->len = len;
 memcpy(fnode->name, name, len > 15 ? 15 : len);
 fnode->up = cpu_to_le32(dir->i_ino);
 mark_buffer_dirty(bh);

 insert_inode_hash(result);

 hpfs_write_inode_nolock(result);
 hpfs_update_directory_times(dir);
 d_instantiate(dentry, result);
 brelse(bh);
 hpfs_unlock(dir->i_sb);
 return 0;
bail2:
 iput(result);
bail1:
 brelse(bh);
 hpfs_free_sectors(dir->i_sb, fno, 1);
bail:
 hpfs_unlock(dir->i_sb);
 return err;
}
