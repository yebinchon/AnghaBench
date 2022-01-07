
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RECORD_TGID ;
 int tracing_start_sched_switch (int ) ;

void tracing_start_tgid_record(void)
{
 tracing_start_sched_switch(RECORD_TGID);
}
