
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sctp_transport {int asoc; int proto_unreach_timer; int reconf_timer; int T3_rtx_timer; int hb_timer; } ;


 scalar_t__ del_timer (int *) ;
 int sctp_association_put (int ) ;
 int sctp_transport_put (struct sctp_transport*) ;

void sctp_transport_free(struct sctp_transport *transport)
{

 if (del_timer(&transport->hb_timer))
  sctp_transport_put(transport);






 if (del_timer(&transport->T3_rtx_timer))
  sctp_transport_put(transport);

 if (del_timer(&transport->reconf_timer))
  sctp_transport_put(transport);


 if (del_timer(&transport->proto_unreach_timer))
  sctp_association_put(transport->asoc);

 sctp_transport_put(transport);
}
