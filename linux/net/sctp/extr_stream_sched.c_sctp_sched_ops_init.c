
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sctp_sched_ops_fcfs_init () ;
 int sctp_sched_ops_prio_init () ;
 int sctp_sched_ops_rr_init () ;

void sctp_sched_ops_init(void)
{
 sctp_sched_ops_fcfs_init();
 sctp_sched_ops_prio_init();
 sctp_sched_ops_rr_init();
}
