
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct inode {int dummy; } ;
struct TYPE_4__ {TYPE_1__* tasks; } ;
struct TYPE_3__ {int first; } ;


 size_t PIDTYPE_PID ;
 TYPE_2__* proc_pid (struct inode*) ;

__attribute__((used)) static inline bool proc_inode_is_dead(struct inode *inode)
{
 return !proc_pid(inode)->tasks[PIDTYPE_PID].first;
}
