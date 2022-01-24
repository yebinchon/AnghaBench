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
struct page_frag {int offset; struct page* page; } ;
struct xfrm_state {int /*<<< orphan*/  lock; struct page_frag xfrag; } ;
struct sock {int /*<<< orphan*/  sk_wmem_alloc; } ;
struct sk_buff {int len; int data_len; int truesize; struct sock* sk; } ;
struct page {int dummy; } ;
struct esp_info {int tailen; int inplace; int /*<<< orphan*/  proto; int /*<<< orphan*/  plen; int /*<<< orphan*/  tfclen; } ;
struct TYPE_2__ {int nr_frags; } ;

/* Variables and functions */
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  L1_CACHE_BYTES ; 
 int MAX_SKB_FRAGS ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,int,struct page*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 int /*<<< orphan*/ * FUNC4 (struct page*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (struct sock*) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*) ; 
 int FUNC10 (struct sk_buff*,int,struct sk_buff**) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC12 (int,struct page_frag*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC13 (struct sk_buff*) ; 
 int /*<<< orphan*/ * FUNC14 (struct sk_buff*) ; 
 int FUNC15 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC18 (int) ; 

int FUNC19(struct xfrm_state *x, struct sk_buff *skb, struct esp_info *esp)
{
	u8 *tail;
	u8 *vaddr;
	int nfrags;
	struct page *page;
	struct sk_buff *trailer;
	int tailen = esp->tailen;

	if (!FUNC9(skb)) {
		if (tailen <= FUNC15(skb)) {
			nfrags = 1;
			trailer = skb;
			tail = FUNC14(trailer);

			goto skip_cow;
		} else if ((FUNC13(skb)->nr_frags < MAX_SKB_FRAGS)
			   && !FUNC11(skb)) {
			int allocsize;
			struct sock *sk = skb->sk;
			struct page_frag *pfrag = &x->xfrag;

			esp->inplace = false;

			allocsize = FUNC0(tailen, L1_CACHE_BYTES);

			FUNC16(&x->lock);

			if (FUNC18(!FUNC12(allocsize, pfrag, GFP_ATOMIC))) {
				FUNC17(&x->lock);
				goto cow;
			}

			page = pfrag->page;
			FUNC3(page);

			vaddr = FUNC4(page);

			tail = vaddr + pfrag->offset;

			FUNC2(tail, esp->tfclen, esp->plen, esp->proto);

			FUNC5(vaddr);

			nfrags = FUNC13(skb)->nr_frags;

			FUNC1(skb, nfrags, page, pfrag->offset,
					     tailen);
			FUNC13(skb)->nr_frags = ++nfrags;

			pfrag->offset = pfrag->offset + allocsize;

			FUNC17(&x->lock);

			nfrags++;

			skb->len += tailen;
			skb->data_len += tailen;
			skb->truesize += tailen;
			if (sk && FUNC8(sk))
				FUNC7(tailen, &sk->sk_wmem_alloc);

			goto out;
		}
	}

cow:
	nfrags = FUNC10(skb, tailen, &trailer);
	if (nfrags < 0)
		goto out;
	tail = FUNC14(trailer);

skip_cow:
	FUNC2(tail, esp->tfclen, esp->plen, esp->proto);
	FUNC6(skb, trailer, tailen);

out:
	return nfrags;
}