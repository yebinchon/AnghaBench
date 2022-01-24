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
struct xfrm_state {int /*<<< orphan*/  lock; struct page_frag xfrag; scalar_t__ encap; } ;
struct sock {int /*<<< orphan*/  sk_wmem_alloc; } ;
struct sk_buff {int len; int data_len; int truesize; struct sock* sk; } ;
struct page {int dummy; } ;
struct ip_esp_hdr {int dummy; } ;
struct esp_info {int tailen; int inplace; int /*<<< orphan*/  proto; int /*<<< orphan*/  plen; int /*<<< orphan*/  tfclen; struct ip_esp_hdr* esph; } ;
struct TYPE_2__ {int nr_frags; } ;

/* Variables and functions */
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  L1_CACHE_BYTES ; 
 int MAX_SKB_FRAGS ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,int,struct page*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct xfrm_state*,struct sk_buff*,struct esp_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 
 int /*<<< orphan*/ * FUNC5 (struct page*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (struct sock*) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*) ; 
 int FUNC11 (struct sk_buff*,int,struct sk_buff**) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC13 (int,struct page_frag*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC14 (struct sk_buff*) ; 
 int /*<<< orphan*/ * FUNC15 (struct sk_buff*) ; 
 int FUNC16 (struct sk_buff*) ; 
 unsigned char* FUNC17 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC20 (int) ; 

int FUNC21(struct xfrm_state *x, struct sk_buff *skb, struct esp_info *esp)
{
	u8 *tail;
	u8 *vaddr;
	int nfrags;
	int esph_offset;
	struct page *page;
	struct sk_buff *trailer;
	int tailen = esp->tailen;

	/* this is non-NULL only with UDP Encapsulation */
	if (x->encap) {
		int err = FUNC3(x, skb, esp);

		if (err < 0)
			return err;
	}

	if (!FUNC10(skb)) {
		if (tailen <= FUNC16(skb)) {
			nfrags = 1;
			trailer = skb;
			tail = FUNC15(trailer);

			goto skip_cow;
		} else if ((FUNC14(skb)->nr_frags < MAX_SKB_FRAGS)
			   && !FUNC12(skb)) {
			int allocsize;
			struct sock *sk = skb->sk;
			struct page_frag *pfrag = &x->xfrag;

			esp->inplace = false;

			allocsize = FUNC0(tailen, L1_CACHE_BYTES);

			FUNC18(&x->lock);

			if (FUNC20(!FUNC13(allocsize, pfrag, GFP_ATOMIC))) {
				FUNC19(&x->lock);
				goto cow;
			}

			page = pfrag->page;
			FUNC4(page);

			vaddr = FUNC5(page);

			tail = vaddr + pfrag->offset;

			FUNC2(tail, esp->tfclen, esp->plen, esp->proto);

			FUNC6(vaddr);

			nfrags = FUNC14(skb)->nr_frags;

			FUNC1(skb, nfrags, page, pfrag->offset,
					     tailen);
			FUNC14(skb)->nr_frags = ++nfrags;

			pfrag->offset = pfrag->offset + allocsize;

			FUNC19(&x->lock);

			nfrags++;

			skb->len += tailen;
			skb->data_len += tailen;
			skb->truesize += tailen;
			if (sk && FUNC9(sk))
				FUNC8(tailen, &sk->sk_wmem_alloc);

			goto out;
		}
	}

cow:
	esph_offset = (unsigned char *)esp->esph - FUNC17(skb);

	nfrags = FUNC11(skb, tailen, &trailer);
	if (nfrags < 0)
		goto out;
	tail = FUNC15(trailer);
	esp->esph = (struct ip_esp_hdr *)(FUNC17(skb) + esph_offset);

skip_cow:
	FUNC2(tail, esp->tfclen, esp->plen, esp->proto);
	FUNC7(skb, trailer, tailen);

out:
	return nfrags;
}