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
struct stable_node {scalar_t__ rmap_hlist_len; int /*<<< orphan*/  hlist; } ;
struct rmap_item {int address; int /*<<< orphan*/  nid; int /*<<< orphan*/  node; int /*<<< orphan*/  anon_vma; int /*<<< orphan*/  hlist; struct stable_node* head; } ;
struct page {int dummy; } ;
struct TYPE_2__ {int seqnr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  GET_KSM_PAGE_LOCK ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int PAGE_MASK ; 
 int STABLE_FLAG ; 
 int UNSTABLE_FLAG ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 struct page* FUNC4 (struct stable_node*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ksm_pages_shared ; 
 int /*<<< orphan*/  ksm_pages_sharing ; 
 int /*<<< orphan*/  ksm_pages_unshared ; 
 TYPE_1__ ksm_scan ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct page*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ root_unstable_tree ; 
 int /*<<< orphan*/  FUNC10 (struct page*) ; 

__attribute__((used)) static void FUNC11(struct rmap_item *rmap_item)
{
	if (rmap_item->address & STABLE_FLAG) {
		struct stable_node *stable_node;
		struct page *page;

		stable_node = rmap_item->head;
		page = FUNC4(stable_node, GET_KSM_PAGE_LOCK);
		if (!page)
			goto out;

		FUNC5(&rmap_item->hlist);
		FUNC10(page);
		FUNC8(page);

		if (!FUNC6(&stable_node->hlist))
			ksm_pages_sharing--;
		else
			ksm_pages_shared--;
		FUNC2(stable_node->rmap_hlist_len <= 0);
		stable_node->rmap_hlist_len--;

		FUNC7(rmap_item->anon_vma);
		rmap_item->address &= PAGE_MASK;

	} else if (rmap_item->address & UNSTABLE_FLAG) {
		unsigned char age;
		/*
		 * Usually ksmd can and must skip the rb_erase, because
		 * root_unstable_tree was already reset to RB_ROOT.
		 * But be careful when an mm is exiting: do the rb_erase
		 * if this rmap_item was inserted by this scan, rather
		 * than left over from before.
		 */
		age = (unsigned char)(ksm_scan.seqnr - rmap_item->address);
		FUNC0(age > 1);
		if (!age)
			FUNC9(&rmap_item->node,
				 root_unstable_tree + FUNC1(rmap_item->nid));
		ksm_pages_unshared--;
		rmap_item->address &= PAGE_MASK;
	}
out:
	FUNC3();		/* we're called from many long loops */
}