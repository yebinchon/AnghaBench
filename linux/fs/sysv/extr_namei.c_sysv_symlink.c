
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {TYPE_1__* i_sb; } ;
struct dentry {int dummy; } ;
struct TYPE_2__ {int s_blocksize; } ;


 int ENAMETOOLONG ;
 scalar_t__ IS_ERR (struct inode*) ;
 int PTR_ERR (struct inode*) ;
 int S_IFLNK ;
 int add_nondir (struct dentry*,struct inode*) ;
 int inode_dec_link_count (struct inode*) ;
 int iput (struct inode*) ;
 int mark_inode_dirty (struct inode*) ;
 int page_symlink (struct inode*,char const*,int) ;
 int strlen (char const*) ;
 struct inode* sysv_new_inode (struct inode*,int) ;
 int sysv_set_inode (struct inode*,int ) ;

__attribute__((used)) static int sysv_symlink(struct inode * dir, struct dentry * dentry,
 const char * symname)
{
 int err = -ENAMETOOLONG;
 int l = strlen(symname)+1;
 struct inode * inode;

 if (l > dir->i_sb->s_blocksize)
  goto out;

 inode = sysv_new_inode(dir, S_IFLNK|0777);
 err = PTR_ERR(inode);
 if (IS_ERR(inode))
  goto out;

 sysv_set_inode(inode, 0);
 err = page_symlink(inode, symname, l);
 if (err)
  goto out_fail;

 mark_inode_dirty(inode);
 err = add_nondir(dentry, inode);
out:
 return err;

out_fail:
 inode_dec_link_count(inode);
 iput(inode);
 goto out;
}
