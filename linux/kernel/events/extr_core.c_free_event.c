
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_event {int refcount; } ;


 scalar_t__ WARN (int,char*,int ,struct perf_event*) ;
 int _free_event (struct perf_event*) ;
 int atomic_long_cmpxchg (int *,int,int ) ;
 int atomic_long_read (int *) ;

__attribute__((used)) static void free_event(struct perf_event *event)
{
 if (WARN(atomic_long_cmpxchg(&event->refcount, 1, 0) != 1,
    "unexpected event refcount: %ld; ptr=%p\n",
    atomic_long_read(&event->refcount), event)) {

  return;
 }

 _free_event(event);
}
