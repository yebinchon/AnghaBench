
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_event_file {int * filter; } ;


 int __free_filter (int *) ;

__attribute__((used)) static inline void __free_subsystem_filter(struct trace_event_file *file)
{
 __free_filter(file->filter);
 file->filter = ((void*)0);
}
