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
struct skb_shared_info {int /*<<< orphan*/  nr_frags; } ;
struct sk_buff {int dummy; } ;
struct page {int dummy; } ;

/* Variables and functions */
 void* FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,int /*<<< orphan*/ ,struct page*,int,int,int) ; 
 struct skb_shared_info* FUNC3 (struct sk_buff*) ; 

__attribute__((used)) static void
FUNC4(struct sk_buff *skb, struct page *page,
		 void *ptr, int len, int size)
{
	struct skb_shared_info *sh = FUNC3(skb);
	int page_offset;

	FUNC1(page);
	page_offset = ptr - FUNC0(page);
	FUNC2(skb, sh->nr_frags, page, page_offset, len, size);
}