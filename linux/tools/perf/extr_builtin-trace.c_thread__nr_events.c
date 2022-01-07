
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread_trace {unsigned long nr_events; } ;



__attribute__((used)) static unsigned long thread__nr_events(struct thread_trace *ttrace)
{
 return ttrace ? ttrace->nr_events : 0;
}
