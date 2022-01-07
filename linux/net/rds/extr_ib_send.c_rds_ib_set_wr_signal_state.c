
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int send_flags; } ;
struct rds_ib_send_work {TYPE_1__ s_wr; } ;
struct rds_ib_connection {scalar_t__ i_unsignaled_wrs; } ;


 int IB_SEND_SIGNALED ;
 scalar_t__ rds_ib_sysctl_max_unsig_wrs ;

__attribute__((used)) static inline int rds_ib_set_wr_signal_state(struct rds_ib_connection *ic,
          struct rds_ib_send_work *send,
          bool notify)
{





 if (ic->i_unsignaled_wrs-- == 0 || notify) {
  ic->i_unsignaled_wrs = rds_ib_sysctl_max_unsig_wrs;
  send->s_wr.send_flags |= IB_SEND_SIGNALED;
  return 1;
 }
 return 0;
}
