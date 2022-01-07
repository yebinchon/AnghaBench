
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SCTP_SS_RR ;
 int sctp_sched_ops_register (int ,int *) ;
 int sctp_sched_rr ;

void sctp_sched_ops_rr_init(void)
{
 sctp_sched_ops_register(SCTP_SS_RR, &sctp_sched_rr);
}
