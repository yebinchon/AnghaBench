
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct writeback_control {int dummy; } ;
struct inode {int dummy; } ;


 int writeback_single_inode (struct inode*,struct writeback_control*) ;

int sync_inode(struct inode *inode, struct writeback_control *wbc)
{
 return writeback_single_inode(inode, wbc);
}
