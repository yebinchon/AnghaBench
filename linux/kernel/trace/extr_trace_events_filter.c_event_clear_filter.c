
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_event_file {int filter; } ;


 int RCU_INIT_POINTER (int ,int *) ;

__attribute__((used)) static inline void event_clear_filter(struct trace_event_file *file)
{
 RCU_INIT_POINTER(file->filter, ((void*)0));
}
