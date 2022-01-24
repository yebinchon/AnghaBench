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
struct tls_record_info {int num_frags; int len; int /*<<< orphan*/ * frags; } ;
struct page_frag {scalar_t__ offset; int /*<<< orphan*/  page; } ;
typedef  int /*<<< orphan*/  skb_frag_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC8(struct tls_record_info *record,
			    struct page_frag *pfrag,
			    int size)
{
	skb_frag_t *frag;

	frag = &record->frags[record->num_frags - 1];
	if (FUNC4(frag) == pfrag->page &&
	    FUNC2(frag) + FUNC5(frag) == pfrag->offset) {
		FUNC6(frag, size);
	} else {
		++frag;
		FUNC0(frag, pfrag->page);
		FUNC3(frag, pfrag->offset);
		FUNC7(frag, size);
		++record->num_frags;
		FUNC1(pfrag->page);
	}

	pfrag->offset += size;
	record->len += size;
}