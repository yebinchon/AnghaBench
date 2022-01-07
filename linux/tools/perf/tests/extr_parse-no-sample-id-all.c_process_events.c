
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union perf_event {int dummy; } perf_event ;
struct evlist {int dummy; } ;


 int evlist__delete (struct evlist*) ;
 int process_event (struct evlist**,union perf_event*) ;

__attribute__((used)) static int process_events(union perf_event **events, size_t count)
{
 struct evlist *evlist = ((void*)0);
 int err = 0;
 size_t i;

 for (i = 0; i < count && !err; i++)
  err = process_event(&evlist, events[i]);

 evlist__delete(evlist);

 return err;
}
