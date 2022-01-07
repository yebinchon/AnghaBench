
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dead; int sk; } ;
struct sctp_endpoint {TYPE_1__ base; } ;


 int SCTP_SS_CLOSED ;
 int inet_sk_set_state (int ,int ) ;
 int sctp_endpoint_put (struct sctp_endpoint*) ;
 int sctp_unhash_endpoint (struct sctp_endpoint*) ;

void sctp_endpoint_free(struct sctp_endpoint *ep)
{
 ep->base.dead = 1;

 inet_sk_set_state(ep->base.sk, SCTP_SS_CLOSED);


 sctp_unhash_endpoint(ep);

 sctp_endpoint_put(ep);
}
