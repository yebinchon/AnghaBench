#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u32 ;
struct sk_buff {int transport_header; TYPE_4__* dev; } ;
struct net {int dummy; } ;
struct ipv6hdr {scalar_t__ payload_len; } ;
struct TYPE_7__ {int /*<<< orphan*/  lock; } ;
struct frag_queue {int iif; TYPE_3__ q; } ;
struct frag_hdr {int frag_off; int /*<<< orphan*/  identification; } ;
struct TYPE_9__ {int flags; int /*<<< orphan*/ * nhoff; } ;
struct TYPE_8__ {int ifindex; } ;
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ICMPV6_HDR_FIELD ; 
 TYPE_5__* FUNC0 (struct sk_buff*) ; 
 int IP6SKB_FRAGMENTED ; 
 int /*<<< orphan*/  IPSTATS_MIB_INHDRERRORS ; 
 int /*<<< orphan*/  IPSTATS_MIB_REASMFAILS ; 
 int /*<<< orphan*/  IPSTATS_MIB_REASMOKS ; 
 int /*<<< orphan*/  IPSTATS_MIB_REASMREQDS ; 
 int /*<<< orphan*/  FUNC1 (struct net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 struct net* FUNC3 (int /*<<< orphan*/ ) ; 
 struct frag_queue* FUNC4 (struct net*,int /*<<< orphan*/ ,struct ipv6hdr const*,int) ; 
 int FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int FUNC9 (struct frag_queue*,struct sk_buff*,struct frag_hdr*,int /*<<< orphan*/ *,scalar_t__*) ; 
 struct ipv6hdr* FUNC10 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*,scalar_t__) ; 
 TYPE_1__* FUNC13 (struct sk_buff*) ; 
 int FUNC14 (struct sk_buff*) ; 
 scalar_t__ FUNC15 (struct sk_buff*) ; 
 scalar_t__ FUNC16 (struct sk_buff*) ; 
 scalar_t__ FUNC17 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC20(struct sk_buff *skb)
{
	struct frag_hdr *fhdr;
	struct frag_queue *fq;
	const struct ipv6hdr *hdr = FUNC10(skb);
	struct net *net = FUNC3(FUNC13(skb)->dev);
	int iif;

	if (FUNC0(skb)->flags & IP6SKB_FRAGMENTED)
		goto fail_hdr;

	FUNC1(net, FUNC8(FUNC13(skb)), IPSTATS_MIB_REASMREQDS);

	/* Jumbo payload inhibits frag. header */
	if (hdr->payload_len == 0)
		goto fail_hdr;

	if (!FUNC12(skb, (FUNC17(skb) +
				 sizeof(struct frag_hdr))))
		goto fail_hdr;

	hdr = FUNC10(skb);
	fhdr = (struct frag_hdr *)FUNC16(skb);

	if (!(fhdr->frag_off & FUNC5(0xFFF9))) {
		/* It is not a fragmented frame */
		skb->transport_header += sizeof(struct frag_hdr);
		FUNC1(net,
				FUNC8(FUNC13(skb)), IPSTATS_MIB_REASMOKS);

		FUNC0(skb)->nhoff = (u8 *)fhdr - FUNC14(skb);
		FUNC0(skb)->flags |= IP6SKB_FRAGMENTED;
		return 1;
	}

	iif = skb->dev ? skb->dev->ifindex : 0;
	fq = FUNC4(net, fhdr->identification, hdr, iif);
	if (fq) {
		u32 prob_offset = 0;
		int ret;

		FUNC18(&fq->q.lock);

		fq->iif = iif;
		ret = FUNC9(fq, skb, fhdr, FUNC0(skb)->nhoff,
				     &prob_offset);

		FUNC19(&fq->q.lock);
		FUNC7(&fq->q);
		if (prob_offset) {
			FUNC1(net, FUNC2(skb->dev),
					IPSTATS_MIB_INHDRERRORS);
			/* icmpv6_param_prob() calls kfree_skb(skb) */
			FUNC6(skb, ICMPV6_HDR_FIELD, prob_offset);
		}
		return ret;
	}

	FUNC1(net, FUNC8(FUNC13(skb)), IPSTATS_MIB_REASMFAILS);
	FUNC11(skb);
	return -1;

fail_hdr:
	FUNC1(net, FUNC2(skb->dev),
			IPSTATS_MIB_INHDRERRORS);
	FUNC6(skb, ICMPV6_HDR_FIELD, FUNC15(skb));
	return -1;
}