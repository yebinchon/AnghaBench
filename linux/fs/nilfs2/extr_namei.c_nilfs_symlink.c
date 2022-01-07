
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {unsigned int s_blocksize; } ;
struct nilfs_transaction_info {int dummy; } ;
struct inode {struct super_block* i_sb; TYPE_1__* i_mapping; int * i_op; } ;
struct dentry {int dummy; } ;
struct TYPE_2__ {int * a_ops; } ;


 int ENAMETOOLONG ;
 scalar_t__ IS_ERR (struct inode*) ;
 int PTR_ERR (struct inode*) ;
 int S_IFLNK ;
 int drop_nlink (struct inode*) ;
 int inode_nohighmem (struct inode*) ;
 int iput (struct inode*) ;
 int nilfs_add_nondir (struct dentry*,struct inode*) ;
 int nilfs_aops ;
 int nilfs_mark_inode_dirty (struct inode*) ;
 struct inode* nilfs_new_inode (struct inode*,int) ;
 int nilfs_symlink_inode_operations ;
 int nilfs_transaction_abort (struct super_block*) ;
 int nilfs_transaction_begin (struct super_block*,struct nilfs_transaction_info*,int) ;
 int nilfs_transaction_commit (struct super_block*) ;
 int page_symlink (struct inode*,char const*,unsigned int) ;
 int strlen (char const*) ;
 int unlock_new_inode (struct inode*) ;

__attribute__((used)) static int nilfs_symlink(struct inode *dir, struct dentry *dentry,
    const char *symname)
{
 struct nilfs_transaction_info ti;
 struct super_block *sb = dir->i_sb;
 unsigned int l = strlen(symname) + 1;
 struct inode *inode;
 int err;

 if (l > sb->s_blocksize)
  return -ENAMETOOLONG;

 err = nilfs_transaction_begin(dir->i_sb, &ti, 1);
 if (err)
  return err;

 inode = nilfs_new_inode(dir, S_IFLNK | 0777);
 err = PTR_ERR(inode);
 if (IS_ERR(inode))
  goto out;


 inode->i_op = &nilfs_symlink_inode_operations;
 inode_nohighmem(inode);
 inode->i_mapping->a_ops = &nilfs_aops;
 err = page_symlink(inode, symname, l);
 if (err)
  goto out_fail;




 err = nilfs_add_nondir(dentry, inode);
out:
 if (!err)
  err = nilfs_transaction_commit(dir->i_sb);
 else
  nilfs_transaction_abort(dir->i_sb);

 return err;

out_fail:
 drop_nlink(inode);
 nilfs_mark_inode_dirty(inode);
 unlock_new_inode(inode);
 iput(inode);
 goto out;
}
