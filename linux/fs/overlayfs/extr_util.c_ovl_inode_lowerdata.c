
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_mode; } ;
struct TYPE_2__ {scalar_t__ lowerdata; } ;


 TYPE_1__* OVL_I (struct inode*) ;
 int S_ISREG (int ) ;
 scalar_t__ WARN_ON (int) ;
 struct inode* ovl_inode_lower (struct inode*) ;

struct inode *ovl_inode_lowerdata(struct inode *inode)
{
 if (WARN_ON(!S_ISREG(inode->i_mode)))
  return ((void*)0);

 return OVL_I(inode)->lowerdata ?: ovl_inode_lower(inode);
}
