
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int expires; } ;
struct sctp_transport {int rto; TYPE_1__ hb_timer; } ;


 unsigned long jiffies ;
 int mod_timer (TYPE_1__*,scalar_t__) ;
 scalar_t__ prandom_u32_max (int ) ;
 int sctp_transport_hold (struct sctp_transport*) ;
 unsigned long sctp_transport_timeout (struct sctp_transport*) ;
 scalar_t__ time_before (int ,unsigned long) ;
 int timer_pending (TYPE_1__*) ;

void sctp_transport_reset_hb_timer(struct sctp_transport *transport)
{
 unsigned long expires;


 expires = jiffies + sctp_transport_timeout(transport);
 if ((time_before(transport->hb_timer.expires, expires) ||
      !timer_pending(&transport->hb_timer)) &&
     !mod_timer(&transport->hb_timer,
         expires + prandom_u32_max(transport->rto)))
  sctp_transport_hold(transport);
}
