
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct dentry {int dummy; } ;
typedef int nid_t ;


 struct dentry* d_find_any_alias (struct inode*) ;
 int dput (struct dentry*) ;
 struct inode* igrab (struct inode*) ;
 int iput (struct inode*) ;
 int parent_ino (struct dentry*) ;

__attribute__((used)) static int get_parent_ino(struct inode *inode, nid_t *pino)
{
 struct dentry *dentry;

 inode = igrab(inode);
 dentry = d_find_any_alias(inode);
 iput(inode);
 if (!dentry)
  return 0;

 *pino = parent_ino(dentry);
 dput(dentry);
 return 1;
}
