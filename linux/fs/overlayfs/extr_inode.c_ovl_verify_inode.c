
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_mode; } ;
struct dentry {int dummy; } ;


 scalar_t__ S_ISDIR (int ) ;
 scalar_t__ d_inode (struct dentry*) ;
 scalar_t__ ovl_inode_lower (struct inode*) ;
 scalar_t__ ovl_inode_upper (struct inode*) ;

__attribute__((used)) static bool ovl_verify_inode(struct inode *inode, struct dentry *lowerdentry,
        struct dentry *upperdentry, bool strict)
{






 if (S_ISDIR(inode->i_mode) && strict) {

  if (!lowerdentry && ovl_inode_lower(inode))
   return 0;


  if (!upperdentry && ovl_inode_upper(inode))
   return 0;
 }







 if (lowerdentry && ovl_inode_lower(inode) != d_inode(lowerdentry))
  return 0;





 if (upperdentry && ovl_inode_upper(inode) != d_inode(upperdentry))
  return 0;

 return 1;
}
