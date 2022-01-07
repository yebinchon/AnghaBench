
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
struct inode {int i_sb; } ;


 int ENOMEM ;
 struct inode* ERR_PTR (int) ;
 int ML_ERROR ;
 scalar_t__ S_ISDIR (int ) ;
 int dquot_initialize (struct inode*) ;
 int inode_init_owner (struct inode*,struct inode*,int ) ;
 int mlog (int ,char*) ;
 struct inode* new_inode (int ) ;
 int set_nlink (struct inode*,int) ;

__attribute__((used)) static struct inode *ocfs2_get_init_inode(struct inode *dir, umode_t mode)
{
 struct inode *inode;
 int status;

 inode = new_inode(dir->i_sb);
 if (!inode) {
  mlog(ML_ERROR, "new_inode failed!\n");
  return ERR_PTR(-ENOMEM);
 }




 if (S_ISDIR(mode))
  set_nlink(inode, 2);
 inode_init_owner(inode, dir, mode);
 status = dquot_initialize(inode);
 if (status)
  return ERR_PTR(status);

 return inode;
}
