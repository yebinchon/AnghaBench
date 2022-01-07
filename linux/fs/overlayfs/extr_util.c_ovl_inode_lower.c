
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct TYPE_2__ {struct inode* lower; } ;


 TYPE_1__* OVL_I (struct inode*) ;

struct inode *ovl_inode_lower(struct inode *inode)
{
 return OVL_I(inode)->lower;
}
