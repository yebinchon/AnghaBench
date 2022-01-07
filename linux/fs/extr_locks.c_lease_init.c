
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct file_lock {int * fl_lmops; int * fl_ops; int fl_end; scalar_t__ fl_start; int fl_flags; struct file* fl_file; int fl_pid; struct file* fl_owner; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int tgid; } ;


 int EINVAL ;
 int FL_LEASE ;
 int OFFSET_MAX ;
 scalar_t__ assign_type (struct file_lock*,long) ;
 TYPE_1__* current ;
 int lease_manager_ops ;

__attribute__((used)) static int lease_init(struct file *filp, long type, struct file_lock *fl)
{
 if (assign_type(fl, type) != 0)
  return -EINVAL;

 fl->fl_owner = filp;
 fl->fl_pid = current->tgid;

 fl->fl_file = filp;
 fl->fl_flags = FL_LEASE;
 fl->fl_start = 0;
 fl->fl_end = OFFSET_MAX;
 fl->fl_ops = ((void*)0);
 fl->fl_lmops = &lease_manager_ops;
 return 0;
}
