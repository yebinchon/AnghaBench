
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scan_control {int dummy; } ;
struct inode {int dummy; } ;
struct TYPE_2__ {int flags; scalar_t__ backing_dev_info; } ;


 int PF_SWAPWRITE ;
 TYPE_1__* current ;
 scalar_t__ inode_to_bdi (struct inode*) ;
 int inode_write_congested (struct inode*) ;

__attribute__((used)) static int may_write_to_inode(struct inode *inode, struct scan_control *sc)
{
 if (current->flags & PF_SWAPWRITE)
  return 1;
 if (!inode_write_congested(inode))
  return 1;
 if (inode_to_bdi(inode) == current->backing_dev_info)
  return 1;
 return 0;
}
