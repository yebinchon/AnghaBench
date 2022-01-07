
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int down_read (int *) ;
 int trace_event_sem ;

void trace_event_read_lock(void)
{
 down_read(&trace_event_sem);
}
