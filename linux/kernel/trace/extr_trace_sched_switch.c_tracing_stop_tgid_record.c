
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RECORD_TGID ;
 int tracing_stop_sched_switch (int ) ;

void tracing_stop_tgid_record(void)
{
 tracing_stop_sched_switch(RECORD_TGID);
}
