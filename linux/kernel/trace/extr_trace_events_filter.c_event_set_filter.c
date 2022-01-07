
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_event_file {int filter; } ;
struct event_filter {int dummy; } ;


 int rcu_assign_pointer (int ,struct event_filter*) ;

__attribute__((used)) static inline void event_set_filter(struct trace_event_file *file,
        struct event_filter *filter)
{
 rcu_assign_pointer(file->filter, filter);
}
