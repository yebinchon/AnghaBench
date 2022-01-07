
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int type; } ;
union sctp_addr_param {TYPE_1__ p; } ;
typedef union sctp_addr {int dummy; } sctp_addr ;
struct sctp_transport {int dummy; } ;
struct sctp_chunkhdr {int dummy; } ;
struct sctp_association {int dummy; } ;
struct sctp_af {int (* from_addr_param ) (union sctp_addr*,union sctp_addr_param*,int ,int ) ;} ;
struct sctp_addip_chunk {int dummy; } ;
struct net {int dummy; } ;
typedef int __be16 ;


 struct sctp_association* __sctp_lookup_association (struct net*,union sctp_addr const*,union sctp_addr*,struct sctp_transport**) ;
 int param_type2af (int ) ;
 struct sctp_af* sctp_get_af_specific (int ) ;
 int stub1 (union sctp_addr*,union sctp_addr_param*,int ,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static struct sctp_association *__sctp_rcv_asconf_lookup(
     struct net *net,
     struct sctp_chunkhdr *ch,
     const union sctp_addr *laddr,
     __be16 peer_port,
     struct sctp_transport **transportp)
{
 struct sctp_addip_chunk *asconf = (struct sctp_addip_chunk *)ch;
 struct sctp_af *af;
 union sctp_addr_param *param;
 union sctp_addr paddr;


 param = (union sctp_addr_param *)(asconf + 1);

 af = sctp_get_af_specific(param_type2af(param->p.type));
 if (unlikely(!af))
  return ((void*)0);

 af->from_addr_param(&paddr, param, peer_port, 0);

 return __sctp_lookup_association(net, laddr, &paddr, transportp);
}
