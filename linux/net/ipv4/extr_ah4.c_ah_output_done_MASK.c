#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct iphdr {int ihl; int /*<<< orphan*/  daddr; int /*<<< orphan*/  frag_off; int /*<<< orphan*/  ttl; int /*<<< orphan*/  tos; } ;
typedef  struct iphdr u8 ;
struct xfrm_state {struct ah_data* data; } ;
struct sk_buff {int dummy; } ;
struct ip_auth_hdr {struct iphdr* auth_data; } ;
struct crypto_async_request {struct sk_buff* data; } ;
struct ah_data {int icv_trunc_len; int /*<<< orphan*/  ahash; } ;
struct TYPE_4__ {struct iphdr* tmp; } ;
struct TYPE_3__ {struct xfrm_state* xfrm; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (struct sk_buff*) ; 
 struct iphdr* FUNC1 (int /*<<< orphan*/ ,struct iphdr*,int) ; 
 struct ip_auth_hdr* FUNC2 (struct sk_buff*) ; 
 struct iphdr* FUNC3 (struct sk_buff*) ; 
 int FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct iphdr*) ; 
 int /*<<< orphan*/  FUNC6 (struct iphdr*,struct iphdr*,int) ; 
 TYPE_1__* FUNC7 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,int) ; 

__attribute__((used)) static void FUNC9(struct crypto_async_request *base, int err)
{
	u8 *icv;
	struct iphdr *iph;
	struct sk_buff *skb = base->data;
	struct xfrm_state *x = FUNC7(skb)->xfrm;
	struct ah_data *ahp = x->data;
	struct iphdr *top_iph = FUNC3(skb);
	struct ip_auth_hdr *ah = FUNC2(skb);
	int ihl = FUNC4(skb);

	iph = FUNC0(skb)->tmp;
	icv = FUNC1(ahp->ahash, iph, ihl);
	FUNC6(ah->auth_data, icv, ahp->icv_trunc_len);

	top_iph->tos = iph->tos;
	top_iph->ttl = iph->ttl;
	top_iph->frag_off = iph->frag_off;
	if (top_iph->ihl != 5) {
		top_iph->daddr = iph->daddr;
		FUNC6(top_iph+1, iph+1, top_iph->ihl*4 - sizeof(struct iphdr));
	}

	FUNC5(FUNC0(skb)->tmp);
	FUNC8(skb, err);
}