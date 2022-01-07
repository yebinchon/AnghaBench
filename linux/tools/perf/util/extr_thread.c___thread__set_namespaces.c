
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct thread {int namespaces_list; } ;
struct perf_record_namespaces {int dummy; } ;
struct namespaces {scalar_t__ end_time; int list; } ;


 int ENOMEM ;
 struct namespaces* __thread__namespaces (struct thread*) ;
 int list ;
 int list_add (int *,int *) ;
 struct namespaces* list_next_entry (struct namespaces*,int ) ;
 struct namespaces* namespaces__new (struct perf_record_namespaces*) ;

__attribute__((used)) static int __thread__set_namespaces(struct thread *thread, u64 timestamp,
        struct perf_record_namespaces *event)
{
 struct namespaces *new, *curr = __thread__namespaces(thread);

 new = namespaces__new(event);
 if (!new)
  return -ENOMEM;

 list_add(&new->list, &thread->namespaces_list);

 if (timestamp && curr) {





  curr = list_next_entry(new, list);
  curr->end_time = timestamp;
 }

 return 0;
}
