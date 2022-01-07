
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int trace_event_sem ;
 int up_read (int *) ;

void trace_event_read_unlock(void)
{
 up_read(&trace_event_sem);
}
