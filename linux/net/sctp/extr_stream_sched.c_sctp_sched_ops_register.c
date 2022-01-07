
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sctp_sched_ops {int dummy; } ;
typedef enum sctp_sched_type { ____Placeholder_sctp_sched_type } sctp_sched_type ;


 struct sctp_sched_ops** sctp_sched_ops ;

void sctp_sched_ops_register(enum sctp_sched_type sched,
        struct sctp_sched_ops *sched_ops)
{
 sctp_sched_ops[sched] = sched_ops;
}
