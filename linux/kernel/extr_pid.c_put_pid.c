
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pid_namespace {int pid_cachep; } ;
struct pid {size_t level; int count; TYPE_1__* numbers; } ;
struct TYPE_2__ {struct pid_namespace* ns; } ;


 int kmem_cache_free (int ,struct pid*) ;
 int put_pid_ns (struct pid_namespace*) ;
 scalar_t__ refcount_dec_and_test (int *) ;

void put_pid(struct pid *pid)
{
 struct pid_namespace *ns;

 if (!pid)
  return;

 ns = pid->numbers[pid->level].ns;
 if (refcount_dec_and_test(&pid->count)) {
  kmem_cache_free(ns->pid_cachep, pid);
  put_pid_ns(ns);
 }
}
