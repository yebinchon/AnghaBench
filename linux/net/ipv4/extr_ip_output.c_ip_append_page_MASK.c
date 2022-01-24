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
struct sock {int /*<<< orphan*/  sk_wmem_alloc; int /*<<< orphan*/  sk_write_queue; int /*<<< orphan*/  sk_allocation; } ;
struct sk_buff {int len; scalar_t__ ip_summed; int data_len; int truesize; scalar_t__ csum; scalar_t__ network_header; scalar_t__ transport_header; } ;
struct TYPE_5__ {TYPE_3__* dev; } ;
struct rtable {TYPE_2__ dst; } ;
struct page {int dummy; } ;
struct iphdr {int dummy; } ;
struct ip_options {int optlen; } ;
struct inet_cork {int flags; int fragsize; size_t length; scalar_t__ gso_size; struct ip_options* opt; scalar_t__ dst; } ;
struct TYPE_4__ {struct inet_cork base; } ;
struct inet_sock {int /*<<< orphan*/  inet_dport; TYPE_1__ cork; scalar_t__ hdrincl; } ;
struct flowi4 {int /*<<< orphan*/  daddr; } ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  __wsum ;
struct TYPE_6__ {int features; } ;

/* Variables and functions */
 scalar_t__ CHECKSUM_NONE ; 
 int EINVAL ; 
 int EMSGSIZE ; 
 int ENOBUFS ; 
 int EOPNOTSUPP ; 
 int EPERM ; 
 int IPCORK_OPT ; 
 int /*<<< orphan*/  IPSTATS_MIB_OUTDISCARDS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int IP_MAX_MTU ; 
 int FUNC1 (TYPE_3__*) ; 
 int MSG_PROBE ; 
 int NETIF_F_SG ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 scalar_t__ FUNC3 (scalar_t__,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct page*,int,int) ; 
 scalar_t__ FUNC5 (scalar_t__,scalar_t__) ; 
 struct inet_sock* FUNC6 (struct sock*) ; 
 int /*<<< orphan*/  FUNC7 (struct sock*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC8 (struct sock*) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*,unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (struct sk_buff*,struct page*,int,int) ; 
 scalar_t__ FUNC12 (struct sk_buff*,unsigned int,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct sk_buff*,unsigned int) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC17 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC18 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC19 (struct sock*) ; 
 struct sk_buff* FUNC20 (struct sock*,int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC21 (int) ; 

ssize_t	FUNC22(struct sock *sk, struct flowi4 *fl4, struct page *page,
		       int offset, size_t size, int flags)
{
	struct inet_sock *inet = FUNC6(sk);
	struct sk_buff *skb;
	struct rtable *rt;
	struct ip_options *opt = NULL;
	struct inet_cork *cork;
	int hh_len;
	int mtu;
	int len;
	int err;
	unsigned int maxfraglen, fragheaderlen, fraggap, maxnonfragsize;

	if (inet->hdrincl)
		return -EPERM;

	if (flags&MSG_PROBE)
		return 0;

	if (FUNC15(&sk->sk_write_queue))
		return -EINVAL;

	cork = &inet->cork.base;
	rt = (struct rtable *)cork->dst;
	if (cork->flags & IPCORK_OPT)
		opt = cork->opt;

	if (!(rt->dst.dev->features&NETIF_F_SG))
		return -EOPNOTSUPP;

	hh_len = FUNC1(rt->dst.dev);
	mtu = cork->gso_size ? IP_MAX_MTU : cork->fragsize;

	fragheaderlen = sizeof(struct iphdr) + (opt ? opt->optlen : 0);
	maxfraglen = ((mtu - fragheaderlen) & ~7) + fragheaderlen;
	maxnonfragsize = FUNC8(sk) ? 0xFFFF : mtu;

	if (cork->length + size > maxnonfragsize - fragheaderlen) {
		FUNC7(sk, EMSGSIZE, fl4->daddr, inet->inet_dport,
			       mtu - (opt ? opt->optlen : 0));
		return -EMSGSIZE;
	}

	skb = FUNC13(&sk->sk_write_queue);
	if (!skb)
		return -EINVAL;

	cork->length += size;

	while (size > 0) {
		/* Check if the remaining data fits into current packet. */
		len = mtu - skb->len;
		if (len < size)
			len = maxfraglen - skb->len;

		if (len <= 0) {
			struct sk_buff *skb_prev;
			int alloclen;

			skb_prev = skb;
			fraggap = skb_prev->len - maxfraglen;

			alloclen = fragheaderlen + hh_len + fraggap + 15;
			skb = FUNC20(sk, alloclen, 1, sk->sk_allocation);
			if (FUNC21(!skb)) {
				err = -ENOBUFS;
				goto error;
			}

			/*
			 *	Fill in the control structures
			 */
			skb->ip_summed = CHECKSUM_NONE;
			skb->csum = 0;
			FUNC16(skb, hh_len);

			/*
			 *	Find where to start putting bytes.
			 */
			FUNC14(skb, fragheaderlen + fraggap);
			FUNC17(skb);
			skb->transport_header = (skb->network_header +
						 fragheaderlen);
			if (fraggap) {
				skb->csum = FUNC12(skb_prev,
								   maxfraglen,
						    FUNC18(skb),
								   fraggap, 0);
				skb_prev->csum = FUNC5(skb_prev->csum,
							  skb->csum);
				FUNC9(skb_prev, maxfraglen);
			}

			/*
			 * Put the packet on the pending queue.
			 */
			FUNC2(&sk->sk_write_queue, skb);
			continue;
		}

		if (len > size)
			len = size;

		if (FUNC11(skb, page, offset, len)) {
			err = -EMSGSIZE;
			goto error;
		}

		if (skb->ip_summed == CHECKSUM_NONE) {
			__wsum csum;
			csum = FUNC4(page, offset, len);
			skb->csum = FUNC3(skb->csum, csum, skb->len);
		}

		skb->len += len;
		skb->data_len += len;
		skb->truesize += len;
		FUNC10(len, &sk->sk_wmem_alloc);
		offset += len;
		size -= len;
	}
	return 0;

error:
	cork->length -= size;
	FUNC0(FUNC19(sk), IPSTATS_MIB_OUTDISCARDS);
	return err;
}