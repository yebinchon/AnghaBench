
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef union sctp_addr {int dummy; } sctp_addr ;
struct sctp_transport {int saddr; scalar_t__ dst; int fl; struct sctp_af* af_specific; struct sctp_association* asoc; } ;
struct sctp_sock {TYPE_2__* pf; } ;
struct TYPE_6__ {int sk; } ;
struct TYPE_4__ {struct sctp_transport* active_path; int primary_path; } ;
struct sctp_association {TYPE_3__ base; TYPE_1__ peer; } ;
struct sctp_af {int (* get_saddr ) (struct sctp_sock*,struct sctp_transport*,int *) ;int (* get_dst ) (struct sctp_transport*,union sctp_addr*,int *,int ) ;} ;
struct TYPE_5__ {int (* to_sk_saddr ) (int *,int ) ;} ;


 int memcpy (int *,union sctp_addr*,int) ;
 int sctp_opt2sk (struct sctp_sock*) ;
 int sctp_transport_dst_release (struct sctp_transport*) ;
 int sctp_transport_pmtu (struct sctp_transport*,int ) ;
 int stub1 (struct sctp_transport*,union sctp_addr*,int *,int ) ;
 int stub2 (struct sctp_sock*,struct sctp_transport*,int *) ;
 int stub3 (int *,int ) ;

void sctp_transport_route(struct sctp_transport *transport,
     union sctp_addr *saddr, struct sctp_sock *opt)
{
 struct sctp_association *asoc = transport->asoc;
 struct sctp_af *af = transport->af_specific;

 sctp_transport_dst_release(transport);
 af->get_dst(transport, saddr, &transport->fl, sctp_opt2sk(opt));

 if (saddr)
  memcpy(&transport->saddr, saddr, sizeof(union sctp_addr));
 else
  af->get_saddr(opt, transport, &transport->fl);

 sctp_transport_pmtu(transport, sctp_opt2sk(opt));




 if (transport->dst && asoc &&
     (!asoc->peer.primary_path || transport == asoc->peer.active_path))
  opt->pf->to_sk_saddr(&transport->saddr, asoc->base.sk);
}
