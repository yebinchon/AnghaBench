
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct thread {int namespaces_lock; } ;
struct perf_record_namespaces {int dummy; } ;


 int __thread__set_namespaces (struct thread*,int ,struct perf_record_namespaces*) ;
 int down_write (int *) ;
 int up_write (int *) ;

int thread__set_namespaces(struct thread *thread, u64 timestamp,
      struct perf_record_namespaces *event)
{
 int ret;

 down_write(&thread->namespaces_lock);
 ret = __thread__set_namespaces(thread, timestamp, event);
 up_write(&thread->namespaces_lock);
 return ret;
}
