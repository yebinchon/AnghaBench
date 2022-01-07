
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SCTP_SS_FCFS ;
 int sctp_sched_fcfs ;
 int sctp_sched_ops_register (int ,int *) ;

__attribute__((used)) static void sctp_sched_ops_fcfs_init(void)
{
 sctp_sched_ops_register(SCTP_SS_FCFS, &sctp_sched_fcfs);
}
