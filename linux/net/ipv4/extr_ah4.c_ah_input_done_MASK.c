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
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_3__ {scalar_t__ mode; } ;
struct xfrm_state {TYPE_1__ props; struct ah_data* data; } ;
struct sk_buff {int network_header; } ;
struct iphdr {int dummy; } ;
struct ip_auth_hdr {int hdrlen; int nexthdr; } ;
struct crypto_async_request {struct sk_buff* data; } ;
struct ah_data {int /*<<< orphan*/  icv_trunc_len; int /*<<< orphan*/  ahash; } ;
struct TYPE_4__ {struct iphdr* tmp; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (struct sk_buff*) ; 
 int EBADMSG ; 
 scalar_t__ XFRM_MODE_TUNNEL ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,int) ; 
 int /*<<< orphan*/ * FUNC2 (struct iphdr*,int) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct ip_auth_hdr* FUNC5 (struct sk_buff*) ; 
 int FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (struct iphdr*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct iphdr*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*,int) ; 
 struct xfrm_state* FUNC13 (struct sk_buff*) ; 

__attribute__((used)) static void FUNC14(struct crypto_async_request *base, int err)
{
	u8 *auth_data;
	u8 *icv;
	struct iphdr *work_iph;
	struct sk_buff *skb = base->data;
	struct xfrm_state *x = FUNC13(skb);
	struct ah_data *ahp = x->data;
	struct ip_auth_hdr *ah = FUNC5(skb);
	int ihl = FUNC6(skb);
	int ah_hlen = (ah->hdrlen + 2) << 2;

	if (err)
		goto out;

	work_iph = FUNC0(skb)->tmp;
	auth_data = FUNC2(work_iph, ihl);
	icv = FUNC3(ahp->ahash, auth_data, ahp->icv_trunc_len);

	err = FUNC4(icv, auth_data, ahp->icv_trunc_len) ? -EBADMSG : 0;
	if (err)
		goto out;

	err = ah->nexthdr;

	skb->network_header += ah_hlen;
	FUNC8(FUNC9(skb), work_iph, ihl);
	FUNC1(skb, ah_hlen + ihl);

	if (x->props.mode == XFRM_MODE_TUNNEL)
		FUNC10(skb);
	else
		FUNC11(skb, -ihl);
out:
	FUNC7(FUNC0(skb)->tmp);
	FUNC12(skb, err);
}