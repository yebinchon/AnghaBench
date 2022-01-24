#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  sin6_addr; int /*<<< orphan*/  sin6_port; int /*<<< orphan*/  sin6_family; } ;
struct TYPE_8__ {int /*<<< orphan*/  s_addr; } ;
struct TYPE_9__ {TYPE_1__ sin_addr; int /*<<< orphan*/  sin_port; int /*<<< orphan*/  sin_family; } ;
struct TYPE_11__ {TYPE_3__ sin6; TYPE_2__ sin; } ;
struct sockaddr_rxrpc {int transport_len; TYPE_4__ transport; void* transport_type; } ;
struct sk_buff {int /*<<< orphan*/  protocol; } ;
struct TYPE_14__ {int /*<<< orphan*/  saddr; } ;
struct TYPE_13__ {int /*<<< orphan*/  saddr; } ;
struct TYPE_12__ {int /*<<< orphan*/  source; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  AF_INET6 ; 
 int EAFNOSUPPORT ; 
#define  ETH_P_IP 129 
#define  ETH_P_IPV6 128 
 void* SOCK_DGRAM ; 
 TYPE_7__* FUNC0 (struct sk_buff*) ; 
 TYPE_6__* FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sockaddr_rxrpc*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 TYPE_5__* FUNC5 (struct sk_buff*) ; 

int FUNC6(struct sockaddr_rxrpc *srx, struct sk_buff *skb)
{
	FUNC2(srx, 0, sizeof(*srx));

	switch (FUNC3(skb->protocol)) {
	case ETH_P_IP:
		srx->transport_type = SOCK_DGRAM;
		srx->transport_len = sizeof(srx->transport.sin);
		srx->transport.sin.sin_family = AF_INET;
		srx->transport.sin.sin_port = FUNC5(skb)->source;
		srx->transport.sin.sin_addr.s_addr = FUNC0(skb)->saddr;
		return 0;

#ifdef CONFIG_AF_RXRPC_IPV6
	case ETH_P_IPV6:
		srx->transport_type = SOCK_DGRAM;
		srx->transport_len = sizeof(srx->transport.sin6);
		srx->transport.sin6.sin6_family = AF_INET6;
		srx->transport.sin6.sin6_port = udp_hdr(skb)->source;
		srx->transport.sin6.sin6_addr = ipv6_hdr(skb)->saddr;
		return 0;
#endif

	default:
		FUNC4("AF_RXRPC: Unknown eth protocol %u\n",
				    FUNC3(skb->protocol));
		return -EAFNOSUPPORT;
	}
}