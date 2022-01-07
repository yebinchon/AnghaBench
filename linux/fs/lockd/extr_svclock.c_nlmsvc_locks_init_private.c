
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlm_host {int dummy; } ;
struct file_lock {int * fl_ops; int * fl_owner; } ;
typedef int pid_t ;


 int * nlmsvc_find_lockowner (struct nlm_host*,int ) ;
 int nlmsvc_lock_ops ;

void nlmsvc_locks_init_private(struct file_lock *fl, struct nlm_host *host,
      pid_t pid)
{
 fl->fl_owner = nlmsvc_find_lockowner(host, pid);
 if (fl->fl_owner != ((void*)0))
  fl->fl_ops = &nlmsvc_lock_ops;
}
