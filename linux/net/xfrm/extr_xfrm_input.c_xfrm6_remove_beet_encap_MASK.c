#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  in6; } ;
struct TYPE_4__ {int /*<<< orphan*/  in6; } ;
struct TYPE_6__ {TYPE_2__ saddr; TYPE_1__ daddr; } ;
struct xfrm_state {TYPE_3__ sel; } ;
struct sk_buff {scalar_t__ len; scalar_t__ mac_len; } ;
struct ipv6hdr {int /*<<< orphan*/  saddr; int /*<<< orphan*/  daddr; int /*<<< orphan*/  payload_len; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 struct ipv6hdr* FUNC2 (struct sk_buff*) ; 
 int FUNC3 (struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 

__attribute__((used)) static int FUNC7(struct xfrm_state *x, struct sk_buff *skb)
{
	struct ipv6hdr *ip6h;
	int size = sizeof(struct ipv6hdr);
	int err;

	err = FUNC3(skb, size + skb->mac_len);
	if (err)
		goto out;

	FUNC0(skb, size);
	FUNC5(skb);
	FUNC4(skb);

	FUNC6(skb);

	ip6h = FUNC2(skb);
	ip6h->payload_len = FUNC1(skb->len - size);
	ip6h->daddr = x->sel.daddr.in6;
	ip6h->saddr = x->sel.saddr.in6;
	err = 0;
out:
	return err;
}