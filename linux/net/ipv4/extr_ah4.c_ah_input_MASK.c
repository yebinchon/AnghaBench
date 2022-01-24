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
struct iphdr {scalar_t__ check; scalar_t__ frag_off; scalar_t__ tos; scalar_t__ ttl; } ;
typedef  struct iphdr u8 ;
struct TYPE_8__ {int flags; scalar_t__ mode; } ;
struct xfrm_state {TYPE_3__ props; struct ah_data* data; } ;
struct sk_buff {int network_header; scalar_t__ len; scalar_t__ data; int /*<<< orphan*/  ip_summed; } ;
struct scatterlist {int dummy; } ;
struct ip_auth_hdr {int nexthdr; int hdrlen; struct iphdr* auth_data; } ;
struct crypto_ahash {int dummy; } ;
struct ahash_request {int dummy; } ;
struct ah_data {int icv_full_len; int icv_trunc_len; struct crypto_ahash* ahash; } ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_10__ {struct iphdr* tmp; } ;
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
 int FUNC2 (int) ; 
 scalar_t__ XFRM_MODE_TUNNEL ; 
 TYPE_4__* FUNC3 (struct sk_buff*) ; 
 int XFRM_STATE_ALIGN4 ; 
 int XFRM_STATE_ESN ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,int) ; 
 struct iphdr* FUNC5 (struct crypto_ahash*,int,int) ; 
 int /*<<< orphan*/  ah_input_done ; 
 struct scatterlist* FUNC6 (struct crypto_ahash*,struct ahash_request*) ; 
 struct iphdr* FUNC7 (int /*<<< orphan*/ *,int) ; 
 struct iphdr* FUNC8 (struct crypto_ahash*,struct iphdr*,int) ; 
 struct ahash_request* FUNC9 (struct crypto_ahash*,struct iphdr*) ; 
 int /*<<< orphan*/  FUNC10 (struct ahash_request*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC11 (struct ahash_request*,struct scatterlist*,struct iphdr*,scalar_t__) ; 
 int FUNC12 (struct ahash_request*) ; 
 scalar_t__ FUNC13 (struct iphdr*,struct iphdr*,int) ; 
 int FUNC14 (struct iphdr*,int /*<<< orphan*/ *) ; 
 struct iphdr* FUNC15 (struct sk_buff*) ; 
 int FUNC16 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC17 (struct iphdr*) ; 
 int /*<<< orphan*/  FUNC18 (struct iphdr*,struct iphdr*,int) ; 
 int /*<<< orphan*/  FUNC19 (struct iphdr*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC20 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC21 (struct scatterlist*,int) ; 
 int /*<<< orphan*/  FUNC22 (struct scatterlist*,int /*<<< orphan*/ *,int) ; 
 int FUNC23 (struct sk_buff*,int /*<<< orphan*/ ,struct sk_buff**) ; 
 struct iphdr* FUNC24 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC25 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC26 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC27 (struct sk_buff*,int) ; 
 int FUNC28 (struct sk_buff*,struct scatterlist*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC29 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC30 (int) ; 

__attribute__((used)) static int FUNC31(struct xfrm_state *x, struct sk_buff *skb)
{
	int ah_hlen;
	int ihl;
	int nexthdr;
	int nfrags;
	u8 *auth_data;
	u8 *icv;
	struct sk_buff *trailer;
	struct crypto_ahash *ahash;
	struct ahash_request *req;
	struct scatterlist *sg;
	struct iphdr *iph, *work_iph;
	struct ip_auth_hdr *ah;
	struct ah_data *ahp;
	int err = -ENOMEM;
	int seqhi_len = 0;
	__be32 *seqhi;
	int sglists = 0;
	struct scatterlist *seqhisg;

	if (!FUNC20(skb, sizeof(*ah)))
		goto out;

	ah = (struct ip_auth_hdr *)skb->data;
	ahp = x->data;
	ahash = ahp->ahash;

	nexthdr = ah->nexthdr;
	ah_hlen = (ah->hdrlen + 2) << 2;

	if (x->props.flags & XFRM_STATE_ALIGN4) {
		if (ah_hlen != FUNC1(sizeof(*ah) + ahp->icv_full_len) &&
		    ah_hlen != FUNC1(sizeof(*ah) + ahp->icv_trunc_len))
			goto out;
	} else {
		if (ah_hlen != FUNC2(sizeof(*ah) + ahp->icv_full_len) &&
		    ah_hlen != FUNC2(sizeof(*ah) + ahp->icv_trunc_len))
			goto out;
	}

	if (!FUNC20(skb, ah_hlen))
		goto out;

	/* We are going to _remove_ AH header to keep sockets happy,
	 * so... Later this can change. */
	if (FUNC29(skb, GFP_ATOMIC))
		goto out;

	skb->ip_summed = CHECKSUM_NONE;


	if ((err = FUNC23(skb, 0, &trailer)) < 0)
		goto out;
	nfrags = err;

	ah = (struct ip_auth_hdr *)skb->data;
	iph = FUNC15(skb);
	ihl = FUNC16(skb);

	if (x->props.flags & XFRM_STATE_ESN) {
		sglists = 1;
		seqhi_len = sizeof(*seqhi);
	}

	work_iph = FUNC5(ahash, nfrags + sglists, ihl +
				ahp->icv_trunc_len + seqhi_len);
	if (!work_iph) {
		err = -ENOMEM;
		goto out;
	}

	seqhi = (__be32 *)((char *)work_iph + ihl);
	auth_data = FUNC7(seqhi, seqhi_len);
	icv = FUNC8(ahash, auth_data, ahp->icv_trunc_len);
	req = FUNC9(ahash, icv);
	sg = FUNC6(ahash, req);
	seqhisg = sg + nfrags;

	FUNC18(work_iph, iph, ihl);
	FUNC18(auth_data, ah->auth_data, ahp->icv_trunc_len);
	FUNC19(ah->auth_data, 0, ahp->icv_trunc_len);

	iph->ttl = 0;
	iph->tos = 0;
	iph->frag_off = 0;
	iph->check = 0;
	if (ihl > sizeof(*iph)) {
		__be32 dummy;
		err = FUNC14(iph, &dummy);
		if (err)
			goto out_free;
	}

	FUNC25(skb, ihl);

	FUNC21(sg, nfrags + sglists);
	err = FUNC28(skb, sg, 0, skb->len);
	if (FUNC30(err < 0))
		goto out_free;

	if (x->props.flags & XFRM_STATE_ESN) {
		/* Attach seqhi sg right after packet payload */
		*seqhi = FUNC3(skb)->seq.input.hi;
		FUNC22(seqhisg, seqhi, seqhi_len);
	}
	FUNC11(req, sg, icv, skb->len + seqhi_len);
	FUNC10(req, 0, ah_input_done, skb);

	FUNC0(skb)->tmp = work_iph;

	err = FUNC12(req);
	if (err) {
		if (err == -EINPROGRESS)
			goto out;

		goto out_free;
	}

	err = FUNC13(icv, auth_data, ahp->icv_trunc_len) ? -EBADMSG : 0;
	if (err)
		goto out_free;

	skb->network_header += ah_hlen;
	FUNC18(FUNC24(skb), work_iph, ihl);
	FUNC4(skb, ah_hlen + ihl);
	if (x->props.mode == XFRM_MODE_TUNNEL)
		FUNC26(skb);
	else
		FUNC27(skb, -ihl);

	err = nexthdr;

out_free:
	FUNC17 (work_iph);
out:
	return err;
}