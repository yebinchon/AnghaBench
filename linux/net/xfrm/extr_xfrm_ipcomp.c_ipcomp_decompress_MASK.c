#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct xfrm_state {struct ipcomp_data* data; } ;
struct sk_buff {int len; int truesize; int data_len; int /*<<< orphan*/ * data; } ;
struct page {int dummy; } ;
struct ipcomp_data {int /*<<< orphan*/  tfms; } ;
struct ip_comp_hdr {int dummy; } ;
struct crypto_comp {int dummy; } ;
typedef  int /*<<< orphan*/  skb_frag_t ;
struct TYPE_2__ {scalar_t__ nr_frags; int /*<<< orphan*/ * frags; } ;

/* Variables and functions */
 int EINVAL ; 
 int EMSGSIZE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int IPCOMP_SCRATCH_SIZE ; 
 scalar_t__ MAX_SKB_FRAGS ; 
 int PAGE_SIZE ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,int) ; 
 struct page* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct crypto_comp*,int /*<<< orphan*/  const*,int const,int /*<<< orphan*/ *,int*) ; 
 int FUNC5 () ; 
 int /*<<< orphan*/  ipcomp_scratches ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 void** FUNC7 (int /*<<< orphan*/ ,int const) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int) ; 
 TYPE_1__* FUNC13 (struct sk_buff*) ; 
 int FUNC14 (struct sk_buff*) ; 

__attribute__((used)) static int FUNC15(struct xfrm_state *x, struct sk_buff *skb)
{
	struct ipcomp_data *ipcd = x->data;
	const int plen = skb->len;
	int dlen = IPCOMP_SCRATCH_SIZE;
	const u8 *start = skb->data;
	const int cpu = FUNC5();
	u8 *scratch = *FUNC7(ipcomp_scratches, cpu);
	struct crypto_comp *tfm = *FUNC7(ipcd->tfms, cpu);
	int err = FUNC4(tfm, start, plen, scratch, &dlen);
	int len;

	if (err)
		goto out;

	if (dlen < (plen + sizeof(struct ip_comp_hdr))) {
		err = -EINVAL;
		goto out;
	}

	len = dlen - plen;
	if (len > FUNC14(skb))
		len = FUNC14(skb);

	FUNC2(skb, len);

	len += plen;
	FUNC9(skb, scratch, len);

	while ((scratch += len, dlen -= len) > 0) {
		skb_frag_t *frag;
		struct page *page;

		err = -EMSGSIZE;
		if (FUNC0(FUNC13(skb)->nr_frags >= MAX_SKB_FRAGS))
			goto out;

		frag = FUNC13(skb)->frags + FUNC13(skb)->nr_frags;
		page = FUNC3(GFP_ATOMIC);

		err = -ENOMEM;
		if (!page)
			goto out;

		FUNC1(frag, page);

		len = PAGE_SIZE;
		if (dlen < len)
			len = dlen;

		FUNC11(frag, 0);
		FUNC12(frag, len);
		FUNC6(FUNC10(frag), scratch, len);

		skb->truesize += len;
		skb->data_len += len;
		skb->len += len;

		FUNC13(skb)->nr_frags++;
	}

	err = 0;

out:
	FUNC8();
	return err;
}