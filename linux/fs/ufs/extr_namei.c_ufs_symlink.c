
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct super_block {unsigned int s_blocksize; } ;
struct inode {char* i_link; unsigned int i_size; int * i_op; TYPE_2__* i_mapping; struct super_block* i_sb; } ;
struct dentry {int dummy; } ;
struct TYPE_8__ {scalar_t__ i_symlink; } ;
struct TYPE_10__ {TYPE_3__ i_u1; } ;
struct TYPE_9__ {TYPE_1__* s_uspi; } ;
struct TYPE_7__ {int * a_ops; } ;
struct TYPE_6__ {unsigned int s_maxsymlinklen; } ;


 int ENAMETOOLONG ;
 scalar_t__ IS_ERR (struct inode*) ;
 int PTR_ERR (struct inode*) ;
 int S_IFLNK ;
 int S_IRWXUGO ;
 TYPE_5__* UFS_I (struct inode*) ;
 TYPE_4__* UFS_SB (struct super_block*) ;
 int discard_new_inode (struct inode*) ;
 int inode_dec_link_count (struct inode*) ;
 int inode_nohighmem (struct inode*) ;
 int mark_inode_dirty (struct inode*) ;
 int memcpy (char*,char const*,unsigned int) ;
 int page_symlink (struct inode*,char const*,unsigned int) ;
 int page_symlink_inode_operations ;
 int simple_symlink_inode_operations ;
 int strlen (char const*) ;
 int ufs_add_nondir (struct dentry*,struct inode*) ;
 int ufs_aops ;
 struct inode* ufs_new_inode (struct inode*,int) ;

__attribute__((used)) static int ufs_symlink (struct inode * dir, struct dentry * dentry,
 const char * symname)
{
 struct super_block * sb = dir->i_sb;
 int err;
 unsigned l = strlen(symname)+1;
 struct inode * inode;

 if (l > sb->s_blocksize)
  return -ENAMETOOLONG;

 inode = ufs_new_inode(dir, S_IFLNK | S_IRWXUGO);
 err = PTR_ERR(inode);
 if (IS_ERR(inode))
  return err;

 if (l > UFS_SB(sb)->s_uspi->s_maxsymlinklen) {

  inode->i_op = &page_symlink_inode_operations;
  inode_nohighmem(inode);
  inode->i_mapping->a_ops = &ufs_aops;
  err = page_symlink(inode, symname, l);
  if (err)
   goto out_fail;
 } else {

  inode->i_op = &simple_symlink_inode_operations;
  inode->i_link = (char *)UFS_I(inode)->i_u1.i_symlink;
  memcpy(inode->i_link, symname, l);
  inode->i_size = l-1;
 }
 mark_inode_dirty(inode);

 return ufs_add_nondir(dentry, inode);

out_fail:
 inode_dec_link_count(inode);
 discard_new_inode(inode);
 return err;
}
