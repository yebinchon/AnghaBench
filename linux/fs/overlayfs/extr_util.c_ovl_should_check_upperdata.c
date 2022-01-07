
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_mode; } ;


 int S_ISREG (int ) ;
 int ovl_inode_lower (struct inode*) ;

__attribute__((used)) static bool ovl_should_check_upperdata(struct inode *inode)
{
 if (!S_ISREG(inode->i_mode))
  return 0;

 if (!ovl_inode_lower(inode))
  return 0;

 return 1;
}
