
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int sin6_addr; int sin6_port; int sin6_family; } ;
struct TYPE_8__ {int s_addr; } ;
struct TYPE_9__ {TYPE_1__ sin_addr; int sin_port; int sin_family; } ;
struct TYPE_11__ {TYPE_3__ sin6; TYPE_2__ sin; } ;
struct sockaddr_rxrpc {int transport_len; TYPE_4__ transport; void* transport_type; } ;
struct sk_buff {int protocol; } ;
struct TYPE_14__ {int saddr; } ;
struct TYPE_13__ {int saddr; } ;
struct TYPE_12__ {int source; } ;


 int AF_INET ;
 int AF_INET6 ;
 int EAFNOSUPPORT ;


 void* SOCK_DGRAM ;
 TYPE_7__* ip_hdr (struct sk_buff*) ;
 TYPE_6__* ipv6_hdr (struct sk_buff*) ;
 int memset (struct sockaddr_rxrpc*,int ,int) ;
 int ntohs (int ) ;
 int pr_warn_ratelimited (char*,int) ;
 TYPE_5__* udp_hdr (struct sk_buff*) ;

int rxrpc_extract_addr_from_skb(struct sockaddr_rxrpc *srx, struct sk_buff *skb)
{
 memset(srx, 0, sizeof(*srx));

 switch (ntohs(skb->protocol)) {
 case 129:
  srx->transport_type = SOCK_DGRAM;
  srx->transport_len = sizeof(srx->transport.sin);
  srx->transport.sin.sin_family = AF_INET;
  srx->transport.sin.sin_port = udp_hdr(skb)->source;
  srx->transport.sin.sin_addr.s_addr = ip_hdr(skb)->saddr;
  return 0;
 default:
  pr_warn_ratelimited("AF_RXRPC: Unknown eth protocol %u\n",
        ntohs(skb->protocol));
  return -EAFNOSUPPORT;
 }
}
