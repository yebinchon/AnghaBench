#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  size_t u8 ;
struct sk_buff {int /*<<< orphan*/  dev; scalar_t__ data; } ;
struct net {int dummy; } ;
struct ipv6hdr {size_t nexthdr; } ;
struct inet6_protocol {int /*<<< orphan*/  (* err_handler ) (struct sk_buff*,int /*<<< orphan*/ *,size_t,size_t,int,int /*<<< orphan*/ ) ;} ;
typedef  int /*<<< orphan*/  __be32 ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 int /*<<< orphan*/  ICMP6_MIB_INERRORS ; 
 int /*<<< orphan*/  FUNC0 (struct net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct net* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * inet6_protos ; 
 scalar_t__ FUNC3 (size_t) ; 
 int FUNC4 (struct sk_buff*,int,size_t*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,size_t,size_t,size_t,int,int /*<<< orphan*/ ) ; 
 struct inet6_protocol* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,int /*<<< orphan*/ *,size_t,size_t,int,int /*<<< orphan*/ ) ; 

void FUNC9(struct sk_buff *skb, u8 type, u8 code, __be32 info)
{
	const struct inet6_protocol *ipprot;
	int inner_offset;
	__be16 frag_off;
	u8 nexthdr;
	struct net *net = FUNC2(skb->dev);

	if (!FUNC5(skb, sizeof(struct ipv6hdr)))
		goto out;

	nexthdr = ((struct ipv6hdr *)skb->data)->nexthdr;
	if (FUNC3(nexthdr)) {
		/* now skip over extension headers */
		inner_offset = FUNC4(skb, sizeof(struct ipv6hdr),
						&nexthdr, &frag_off);
		if (inner_offset < 0)
			goto out;
	} else {
		inner_offset = sizeof(struct ipv6hdr);
	}

	/* Checkin header including 8 bytes of inner protocol header. */
	if (!FUNC5(skb, inner_offset+8))
		goto out;

	/* BUGGG_FUTURE: we should try to parse exthdrs in this packet.
	   Without this we will not able f.e. to make source routed
	   pmtu discovery.
	   Corresponding argument (opt) to notifiers is already added.
	   --ANK (980726)
	 */

	ipprot = FUNC7(inet6_protos[nexthdr]);
	if (ipprot && ipprot->err_handler)
		ipprot->err_handler(skb, NULL, type, code, inner_offset, info);

	FUNC6(skb, nexthdr, type, code, inner_offset, info);
	return;

out:
	FUNC0(net, FUNC1(skb->dev), ICMP6_MIB_INERRORS);
}