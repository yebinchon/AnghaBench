#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct skb_shared_info {int /*<<< orphan*/ * frags; } ;
struct sk_buff {int len; int data_len; void* data; int /*<<< orphan*/  head; } ;
struct page {int dummy; } ;
typedef  int /*<<< orphan*/  skb_frag_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,struct page*,void*,int,int) ; 
 int FUNC1 (int,int) ; 
 void* FUNC2 (int /*<<< orphan*/  const*) ; 
 struct page* FUNC3 (int /*<<< orphan*/  const*) ; 
 int FUNC4 (int /*<<< orphan*/  const*) ; 
 struct skb_shared_info* FUNC5 (struct sk_buff*) ; 
 struct page* FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(struct sk_buff *skb, struct sk_buff *frame,
			    int offset, int len)
{
	struct skb_shared_info *sh = FUNC5(skb);
	const skb_frag_t *frag = &sh->frags[0];
	struct page *frag_page;
	void *frag_ptr;
	int frag_len, frag_size;
	int head_size = skb->len - skb->data_len;
	int cur_len;

	frag_page = FUNC6(skb->head);
	frag_ptr = skb->data;
	frag_size = head_size;

	while (offset >= frag_size) {
		offset -= frag_size;
		frag_page = FUNC3(frag);
		frag_ptr = FUNC2(frag);
		frag_size = FUNC4(frag);
		frag++;
	}

	frag_ptr += offset;
	frag_len = frag_size - offset;

	cur_len = FUNC1(len, frag_len);

	FUNC0(frame, frag_page, frag_ptr, cur_len, frag_size);
	len -= cur_len;

	while (len > 0) {
		frag_len = FUNC4(frag);
		cur_len = FUNC1(len, frag_len);
		FUNC0(frame, FUNC3(frag),
				 FUNC2(frag), cur_len, frag_len);
		len -= cur_len;
		frag++;
	}
}