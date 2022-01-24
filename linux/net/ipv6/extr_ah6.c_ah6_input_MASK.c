#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct ipv6hdr {scalar_t__ hop_limit; scalar_t__* flow_lbl; scalar_t__ priority; } ;
typedef  struct ipv6hdr u8 ;
typedef  int u16 ;
struct TYPE_8__ {int flags; scalar_t__ mode; } ;
struct xfrm_state {TYPE_3__ props; struct ah_data* data; } ;
struct sk_buff {int network_header; scalar_t__ len; scalar_t__ data; int /*<<< orphan*/  ip_summed; } ;
struct scatterlist {int dummy; } ;
struct ip_auth_hdr {int nexthdr; struct ipv6hdr* auth_data; } ;
struct crypto_ahash {int dummy; } ;
struct ahash_request {int dummy; } ;
struct ah_data {int icv_full_len; int icv_trunc_len; struct crypto_ahash* ahash; } ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_10__ {struct ipv6hdr* tmp; } ;
struct TYPE_6__ {int /*<<< orphan*/  hi; } ;
struct TYPE_7__ {TYPE_1__ input; } ;
struct TYPE_9__ {TYPE_2__ seq; } ;

/* Variables and functions */
 TYPE_5__* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  CHECKSUM_NONE ; 
 int EBADMSG ; 
 int EINPROGRESS ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int FUNC1 (int) ; 
 scalar_t__ XFRM_MODE_TUNNEL ; 
 int /*<<< orphan*/  XFRM_POLICY_IN ; 
 TYPE_4__* FUNC2 (struct sk_buff*) ; 
 int XFRM_STATE_ESN ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  ah6_input_done ; 
 struct ipv6hdr* FUNC4 (struct crypto_ahash*,int,int) ; 
 struct scatterlist* FUNC5 (struct crypto_ahash*,struct ahash_request*) ; 
 struct ipv6hdr* FUNC6 (struct ipv6hdr*,int) ; 
 struct ipv6hdr* FUNC7 (struct crypto_ahash*,int /*<<< orphan*/ *,int) ; 
 struct ahash_request* FUNC8 (struct crypto_ahash*,struct ipv6hdr*) ; 
 int /*<<< orphan*/  FUNC9 (struct ahash_request*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC10 (struct ahash_request*,struct scatterlist*,struct ipv6hdr*,scalar_t__) ; 
 int FUNC11 (struct ahash_request*) ; 
 scalar_t__ FUNC12 (struct ipv6hdr*,struct ipv6hdr*,int) ; 
 int FUNC13 (struct ip_auth_hdr*) ; 
 scalar_t__ FUNC14 (struct ipv6hdr*,int,int /*<<< orphan*/ ) ; 
 struct ipv6hdr* FUNC15 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC16 (struct ipv6hdr*) ; 
 int /*<<< orphan*/  FUNC17 (struct ipv6hdr*,struct ipv6hdr*,int) ; 
 int /*<<< orphan*/  FUNC18 (struct ipv6hdr*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC19 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC20 (struct scatterlist*,int) ; 
 int /*<<< orphan*/  FUNC21 (struct scatterlist*,int /*<<< orphan*/ *,int) ; 
 int FUNC22 (struct sk_buff*,int /*<<< orphan*/ ,struct sk_buff**) ; 
 struct ipv6hdr* FUNC23 (struct sk_buff*) ; 
 int FUNC24 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC25 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC26 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC27 (struct sk_buff*,int) ; 
 int FUNC28 (struct sk_buff*,struct scatterlist*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC29 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC30 (int) ; 

__attribute__((used)) static int FUNC31(struct xfrm_state *x, struct sk_buff *skb)
{
	/*
	 * Before process AH
	 * [IPv6][Ext1][Ext2][AH][Dest][Payload]
	 * |<-------------->| hdr_len
	 *
	 * To erase AH:
	 * Keeping copy of cleared headers. After AH processing,
	 * Moving the pointer of skb->network_header by using skb_pull as long
	 * as AH header length. Then copy back the copy as long as hdr_len
	 * If destination header following AH exists, copy it into after [Ext2].
	 *
	 * |<>|[IPv6][Ext1][Ext2][Dest][Payload]
	 * There is offset of AH before IPv6 header after the process.
	 */

	u8 *auth_data;
	u8 *icv;
	u8 *work_iph;
	struct sk_buff *trailer;
	struct crypto_ahash *ahash;
	struct ahash_request *req;
	struct scatterlist *sg;
	struct ip_auth_hdr *ah;
	struct ipv6hdr *ip6h;
	struct ah_data *ahp;
	u16 hdr_len;
	u16 ah_hlen;
	int nexthdr;
	int nfrags;
	int err = -ENOMEM;
	int seqhi_len = 0;
	__be32 *seqhi;
	int sglists = 0;
	struct scatterlist *seqhisg;

	if (!FUNC19(skb, sizeof(struct ip_auth_hdr)))
		goto out;

	/* We are going to _remove_ AH header to keep sockets happy,
	 * so... Later this can change. */
	if (FUNC29(skb, GFP_ATOMIC))
		goto out;

	skb->ip_summed = CHECKSUM_NONE;

	hdr_len = FUNC24(skb);
	ah = (struct ip_auth_hdr *)skb->data;
	ahp = x->data;
	ahash = ahp->ahash;

	nexthdr = ah->nexthdr;
	ah_hlen = FUNC13(ah);

	if (ah_hlen != FUNC1(sizeof(*ah) + ahp->icv_full_len) &&
	    ah_hlen != FUNC1(sizeof(*ah) + ahp->icv_trunc_len))
		goto out;

	if (!FUNC19(skb, ah_hlen))
		goto out;

	err = FUNC22(skb, 0, &trailer);
	if (err < 0)
		goto out;
	nfrags = err;

	ah = (struct ip_auth_hdr *)skb->data;
	ip6h = FUNC15(skb);

	FUNC25(skb, hdr_len);

	if (x->props.flags & XFRM_STATE_ESN) {
		sglists = 1;
		seqhi_len = sizeof(*seqhi);
	}

	work_iph = FUNC4(ahash, nfrags + sglists, hdr_len +
				ahp->icv_trunc_len + seqhi_len);
	if (!work_iph) {
		err = -ENOMEM;
		goto out;
	}

	auth_data = FUNC6((u8 *)work_iph, hdr_len);
	seqhi = (__be32 *)(auth_data + ahp->icv_trunc_len);
	icv = FUNC7(ahash, seqhi, seqhi_len);
	req = FUNC8(ahash, icv);
	sg = FUNC5(ahash, req);
	seqhisg = sg + nfrags;

	FUNC17(work_iph, ip6h, hdr_len);
	FUNC17(auth_data, ah->auth_data, ahp->icv_trunc_len);
	FUNC18(ah->auth_data, 0, ahp->icv_trunc_len);

	if (FUNC14(ip6h, hdr_len, XFRM_POLICY_IN))
		goto out_free;

	ip6h->priority    = 0;
	ip6h->flow_lbl[0] = 0;
	ip6h->flow_lbl[1] = 0;
	ip6h->flow_lbl[2] = 0;
	ip6h->hop_limit   = 0;

	FUNC20(sg, nfrags + sglists);
	err = FUNC28(skb, sg, 0, skb->len);
	if (FUNC30(err < 0))
		goto out_free;

	if (x->props.flags & XFRM_STATE_ESN) {
		/* Attach seqhi sg right after packet payload */
		*seqhi = FUNC2(skb)->seq.input.hi;
		FUNC21(seqhisg, seqhi, seqhi_len);
	}

	FUNC10(req, sg, icv, skb->len + seqhi_len);
	FUNC9(req, 0, ah6_input_done, skb);

	FUNC0(skb)->tmp = work_iph;

	err = FUNC11(req);
	if (err) {
		if (err == -EINPROGRESS)
			goto out;

		goto out_free;
	}

	err = FUNC12(icv, auth_data, ahp->icv_trunc_len) ? -EBADMSG : 0;
	if (err)
		goto out_free;

	skb->network_header += ah_hlen;
	FUNC17(FUNC23(skb), work_iph, hdr_len);
	FUNC3(skb, ah_hlen + hdr_len);

	if (x->props.mode == XFRM_MODE_TUNNEL)
		FUNC26(skb);
	else
		FUNC27(skb, -hdr_len);

	err = nexthdr;

out_free:
	FUNC16(work_iph);
out:
	return err;
}