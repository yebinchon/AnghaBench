
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_event {int refcount; } ;


 int _free_event (struct perf_event*) ;
 int atomic_long_dec_and_test (int *) ;

__attribute__((used)) static void put_event(struct perf_event *event)
{
 if (!atomic_long_dec_and_test(&event->refcount))
  return;

 _free_event(event);
}
