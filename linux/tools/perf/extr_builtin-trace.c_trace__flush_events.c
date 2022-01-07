
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace {int sort_events; } ;


 int __trace__flush_events (struct trace*) ;

__attribute__((used)) static int trace__flush_events(struct trace *trace)
{
 return !trace->sort_events ? 0 : __trace__flush_events(trace);
}
