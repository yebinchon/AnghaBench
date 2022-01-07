
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_event_file {int filter; } ;


 int filter_disable (struct trace_event_file*) ;
 int remove_filter_string (int ) ;

__attribute__((used)) static inline void __remove_filter(struct trace_event_file *file)
{
 filter_disable(file);
 remove_filter_string(file->filter);
}
