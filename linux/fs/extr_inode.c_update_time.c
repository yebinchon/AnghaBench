
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timespec64 {int dummy; } ;
struct inode {TYPE_1__* i_op; } ;
struct TYPE_2__ {int (* update_time ) (struct inode*,struct timespec64*,int) ;} ;


 int generic_update_time (struct inode*,struct timespec64*,int) ;

__attribute__((used)) static int update_time(struct inode *inode, struct timespec64 *time, int flags)
{
 int (*update_time)(struct inode *, struct timespec64 *, int);

 update_time = inode->i_op->update_time ? inode->i_op->update_time :
  generic_update_time;

 return update_time(inode, time, flags);
}
