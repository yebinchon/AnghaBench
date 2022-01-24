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
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct sk_buff {int /*<<< orphan*/  transport_header; TYPE_1__* dev; } ;
struct net {int dummy; } ;
struct ipv6hdr {scalar_t__ payload_len; } ;
struct TYPE_4__ {int /*<<< orphan*/  lock; } ;
struct frag_queue {TYPE_2__ q; } ;
struct frag_hdr {int /*<<< orphan*/  identification; } ;
struct TYPE_3__ {int /*<<< orphan*/  ifindex; } ;

/* Variables and functions */
 int ENOMEM ; 
 int EPROTO ; 
 scalar_t__ FUNC0 (struct sk_buff*,int /*<<< orphan*/ *,int*,int*) ; 
 struct frag_queue* FUNC1 (struct net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ipv6hdr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 struct ipv6hdr* FUNC3 (struct sk_buff*) ; 
 int FUNC4 (struct frag_queue*,struct sk_buff*,struct frag_hdr*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,int) ; 
 scalar_t__ FUNC9 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

int FUNC12(struct net *net, struct sk_buff *skb, u32 user)
{
	u16 savethdr = skb->transport_header;
	int fhoff, nhoff, ret;
	struct frag_hdr *fhdr;
	struct frag_queue *fq;
	struct ipv6hdr *hdr;
	u8 prevhdr;

	/* Jumbo payload inhibits frag. header */
	if (FUNC3(skb)->payload_len == 0) {
		FUNC5("payload len = 0\n");
		return 0;
	}

	if (FUNC0(skb, &prevhdr, &nhoff, &fhoff) < 0)
		return 0;

	if (!FUNC6(skb, fhoff + sizeof(*fhdr)))
		return -ENOMEM;

	FUNC8(skb, fhoff);
	hdr = FUNC3(skb);
	fhdr = (struct frag_hdr *)FUNC9(skb);

	FUNC7(skb);
	fq = FUNC1(net, fhdr->identification, user, hdr,
		     skb->dev ? skb->dev->ifindex : 0);
	if (fq == NULL) {
		FUNC5("Can't find and can't create new queue\n");
		return -ENOMEM;
	}

	FUNC10(&fq->q.lock);

	ret = FUNC4(fq, skb, fhdr, nhoff);
	if (ret == -EPROTO) {
		skb->transport_header = savethdr;
		ret = 0;
	}

	FUNC11(&fq->q.lock);
	FUNC2(&fq->q);
	return ret;
}