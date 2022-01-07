
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sctp_transport {scalar_t__ rto; int reconf_timer; } ;


 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int sctp_transport_hold (struct sctp_transport*) ;
 int timer_pending (int *) ;

void sctp_transport_reset_reconf_timer(struct sctp_transport *transport)
{
 if (!timer_pending(&transport->reconf_timer))
  if (!mod_timer(&transport->reconf_timer,
          jiffies + transport->rto))
   sctp_transport_hold(transport);
}
