
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {TYPE_1__* i_sb; } ;
struct dentry {int dummy; } ;
struct TYPE_2__ {int s_blocksize; } ;


 int ENAMETOOLONG ;
 int S_IFLNK ;
 int add_nondir (struct dentry*,struct inode*) ;
 int inode_dec_link_count (struct inode*) ;
 int iput (struct inode*) ;
 struct inode* minix_new_inode (struct inode*,int,int*) ;
 int minix_set_inode (struct inode*,int ) ;
 int page_symlink (struct inode*,char const*,int) ;
 int strlen (char const*) ;

__attribute__((used)) static int minix_symlink(struct inode * dir, struct dentry *dentry,
   const char * symname)
{
 int err = -ENAMETOOLONG;
 int i = strlen(symname)+1;
 struct inode * inode;

 if (i > dir->i_sb->s_blocksize)
  goto out;

 inode = minix_new_inode(dir, S_IFLNK | 0777, &err);
 if (!inode)
  goto out;

 minix_set_inode(inode, 0);
 err = page_symlink(inode, symname, i);
 if (err)
  goto out_fail;

 err = add_nondir(dentry, inode);
out:
 return err;

out_fail:
 inode_dec_link_count(inode);
 iput(inode);
 goto out;
}
