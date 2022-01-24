#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct iphdr {int ihl; int /*<<< orphan*/  daddr; scalar_t__ frag_off; scalar_t__ ttl; scalar_t__ tos; scalar_t__ check; int /*<<< orphan*/  tot_len; } ;
typedef  struct iphdr u8 ;
struct TYPE_8__ {int flags; } ;
struct TYPE_7__ {int /*<<< orphan*/  spi; } ;
struct xfrm_state {TYPE_2__ props; TYPE_1__ id; struct ah_data* data; } ;
struct sk_buff {scalar_t__ len; } ;
struct scatterlist {int dummy; } ;
struct ip_auth_hdr {int hdrlen; struct iphdr* auth_data; void* seq_no; int /*<<< orphan*/  spi; scalar_t__ reserved; int /*<<< orphan*/  nexthdr; } ;
struct crypto_ahash {int dummy; } ;
struct ahash_request {int dummy; } ;
struct ah_data {int icv_trunc_len; struct crypto_ahash* ahash; } ;
typedef  void* __be32 ;
struct TYPE_12__ {struct iphdr* tmp; } ;
struct TYPE_9__ {int /*<<< orphan*/  hi; int /*<<< orphan*/  low; } ;
struct TYPE_10__ {TYPE_3__ output; } ;
struct TYPE_11__ {TYPE_4__ seq; } ;

/* Variables and functions */
 TYPE_6__* FUNC0 (struct sk_buff*) ; 
 int EINPROGRESS ; 
 int ENOMEM ; 
 int ENOSPC ; 
 int /*<<< orphan*/  IPPROTO_AH ; 
 int NET_XMIT_DROP ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 TYPE_5__* FUNC3 (struct sk_buff*) ; 
 int XFRM_STATE_ALIGN4 ; 
 int XFRM_STATE_ESN ; 
 struct iphdr* FUNC4 (struct crypto_ahash*,int,int) ; 
 int /*<<< orphan*/  ah_output_done ; 
 struct scatterlist* FUNC5 (struct crypto_ahash*,struct ahash_request*) ; 
 struct iphdr* FUNC6 (struct crypto_ahash*,void**,int) ; 
 struct ahash_request* FUNC7 (struct crypto_ahash*,struct iphdr*) ; 
 int /*<<< orphan*/  FUNC8 (struct ahash_request*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC9 (struct ahash_request*,struct scatterlist*,struct iphdr*,scalar_t__) ; 
 int FUNC10 (struct ahash_request*) ; 
 void* FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__) ; 
 struct ip_auth_hdr* FUNC13 (struct sk_buff*) ; 
 int FUNC14 (struct iphdr*,int /*<<< orphan*/ *) ; 
 struct iphdr* FUNC15 (struct sk_buff*) ; 
 int FUNC16 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC17 (struct iphdr*) ; 
 int /*<<< orphan*/  FUNC18 (struct iphdr*,struct iphdr*,int) ; 
 int /*<<< orphan*/  FUNC19 (struct iphdr*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC20 (struct scatterlist*,int) ; 
 int /*<<< orphan*/  FUNC21 (struct scatterlist*,void**,int) ; 
 int FUNC22 (struct sk_buff*,int /*<<< orphan*/ ,struct sk_buff**) ; 
 int /*<<< orphan*/ * FUNC23 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC24 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC25 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int FUNC26 (struct sk_buff*,struct scatterlist*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC27 (int) ; 

__attribute__((used)) static int FUNC28(struct xfrm_state *x, struct sk_buff *skb)
{
	int err;
	int nfrags;
	int ihl;
	u8 *icv;
	struct sk_buff *trailer;
	struct crypto_ahash *ahash;
	struct ahash_request *req;
	struct scatterlist *sg;
	struct iphdr *iph, *top_iph;
	struct ip_auth_hdr *ah;
	struct ah_data *ahp;
	int seqhi_len = 0;
	__be32 *seqhi;
	int sglists = 0;
	struct scatterlist *seqhisg;

	ahp = x->data;
	ahash = ahp->ahash;

	if ((err = FUNC22(skb, 0, &trailer)) < 0)
		goto out;
	nfrags = err;

	FUNC25(skb, -FUNC24(skb));
	ah = FUNC13(skb);
	ihl = FUNC16(skb);

	if (x->props.flags & XFRM_STATE_ESN) {
		sglists = 1;
		seqhi_len = sizeof(*seqhi);
	}
	err = -ENOMEM;
	iph = FUNC4(ahash, nfrags + sglists, ihl + seqhi_len);
	if (!iph)
		goto out;
	seqhi = (__be32 *)((char *)iph + ihl);
	icv = FUNC6(ahash, seqhi, seqhi_len);
	req = FUNC7(ahash, icv);
	sg = FUNC5(ahash, req);
	seqhisg = sg + nfrags;

	FUNC19(ah->auth_data, 0, ahp->icv_trunc_len);

	top_iph = FUNC15(skb);

	iph->tos = top_iph->tos;
	iph->ttl = top_iph->ttl;
	iph->frag_off = top_iph->frag_off;

	if (top_iph->ihl != 5) {
		iph->daddr = top_iph->daddr;
		FUNC18(iph+1, top_iph+1, top_iph->ihl*4 - sizeof(struct iphdr));
		err = FUNC14(top_iph, &top_iph->daddr);
		if (err)
			goto out_free;
	}

	ah->nexthdr = *FUNC23(skb);
	*FUNC23(skb) = IPPROTO_AH;

	top_iph->tos = 0;
	top_iph->tot_len = FUNC12(skb->len);
	top_iph->frag_off = 0;
	top_iph->ttl = 0;
	top_iph->check = 0;

	if (x->props.flags & XFRM_STATE_ALIGN4)
		ah->hdrlen  = (FUNC1(sizeof(*ah) + ahp->icv_trunc_len) >> 2) - 2;
	else
		ah->hdrlen  = (FUNC2(sizeof(*ah) + ahp->icv_trunc_len) >> 2) - 2;

	ah->reserved = 0;
	ah->spi = x->id.spi;
	ah->seq_no = FUNC11(FUNC3(skb)->seq.output.low);

	FUNC20(sg, nfrags + sglists);
	err = FUNC26(skb, sg, 0, skb->len);
	if (FUNC27(err < 0))
		goto out_free;

	if (x->props.flags & XFRM_STATE_ESN) {
		/* Attach seqhi sg right after packet payload */
		*seqhi = FUNC11(FUNC3(skb)->seq.output.hi);
		FUNC21(seqhisg, seqhi, seqhi_len);
	}
	FUNC9(req, sg, icv, skb->len + seqhi_len);
	FUNC8(req, 0, ah_output_done, skb);

	FUNC0(skb)->tmp = iph;

	err = FUNC10(req);
	if (err) {
		if (err == -EINPROGRESS)
			goto out;

		if (err == -ENOSPC)
			err = NET_XMIT_DROP;
		goto out_free;
	}

	FUNC18(ah->auth_data, icv, ahp->icv_trunc_len);

	top_iph->tos = iph->tos;
	top_iph->ttl = iph->ttl;
	top_iph->frag_off = iph->frag_off;
	if (top_iph->ihl != 5) {
		top_iph->daddr = iph->daddr;
		FUNC18(top_iph+1, iph+1, top_iph->ihl*4 - sizeof(struct iphdr));
	}

out_free:
	FUNC17(iph);
out:
	return err;
}