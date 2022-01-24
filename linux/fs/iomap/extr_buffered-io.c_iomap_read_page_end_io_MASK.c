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
struct page {int dummy; } ;
struct iomap_page {int dummy; } ;
struct bio_vec {int /*<<< orphan*/  bv_len; int /*<<< orphan*/  bv_offset; struct page* bv_page; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct iomap_page*,struct page*) ; 
 int /*<<< orphan*/  FUNC3 (struct page*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct iomap_page* FUNC4 (struct page*) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static void
FUNC6(struct bio_vec *bvec, int error)
{
	struct page *page = bvec->bv_page;
	struct iomap_page *iop = FUNC4(page);

	if (FUNC5(error)) {
		FUNC0(page);
		FUNC1(page);
	} else {
		FUNC3(page, bvec->bv_offset, bvec->bv_len);
	}

	FUNC2(iop, page);
}