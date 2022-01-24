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
typedef  void* u8 ;
struct sk_buff {unsigned int len; scalar_t__ data_len; } ;
struct ipv6hdr {int dummy; } ;
struct ip6_fraglist_iter {unsigned int hlen; int /*<<< orphan*/  tmp_hdr; void* nexthdr; void* frag_id; scalar_t__ offset; int /*<<< orphan*/  frag; } ;
struct frag_hdr {void* identification; void* frag_off; scalar_t__ reserved; void* nexthdr; } ;
typedef  void* __be32 ;
struct TYPE_4__ {void* payload_len; } ;
struct TYPE_3__ {int /*<<< orphan*/  frag_list; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 unsigned int IP6_MF ; 
 void* NEXTHDR_FRAGMENT ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,unsigned int) ; 
 struct frag_hdr* FUNC1 (struct sk_buff*,unsigned int) ; 
 void* FUNC2 (unsigned int) ; 
 TYPE_2__* FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 scalar_t__ FUNC7 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*) ; 
 unsigned int FUNC9 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*) ; 
 TYPE_1__* FUNC11 (struct sk_buff*) ; 

int FUNC12(struct sk_buff *skb, unsigned int hlen, u8 *prevhdr,
		      u8 nexthdr, __be32 frag_id,
		      struct ip6_fraglist_iter *iter)
{
	unsigned int first_len;
	struct frag_hdr *fh;

	/* BUILD HEADER */
	*prevhdr = NEXTHDR_FRAGMENT;
	iter->tmp_hdr = FUNC4(FUNC8(skb), hlen, GFP_ATOMIC);
	if (!iter->tmp_hdr)
		return -ENOMEM;

	iter->frag = FUNC11(skb)->frag_list;
	FUNC6(skb);

	iter->offset = 0;
	iter->hlen = hlen;
	iter->frag_id = frag_id;
	iter->nexthdr = nexthdr;

	FUNC0(skb, hlen);
	fh = FUNC1(skb, sizeof(struct frag_hdr));
	FUNC1(skb, hlen);
	FUNC10(skb);
	FUNC5(FUNC8(skb), iter->tmp_hdr, hlen);

	fh->nexthdr = nexthdr;
	fh->reserved = 0;
	fh->frag_off = FUNC2(IP6_MF);
	fh->identification = frag_id;

	first_len = FUNC9(skb);
	skb->data_len = first_len - FUNC7(skb);
	skb->len = first_len;
	FUNC3(skb)->payload_len = FUNC2(first_len - sizeof(struct ipv6hdr));

	return 0;
}