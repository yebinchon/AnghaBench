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
struct writeback_control {int dummy; } ;
struct page {int dummy; } ;
struct orangefs_writepages {int maxpages; struct orangefs_writepages* bv; struct orangefs_writepages* pages; scalar_t__ npages; } ;
struct blk_plug {int dummy; } ;
struct bio_vec {int dummy; } ;
struct address_space {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct blk_plug*) ; 
 int /*<<< orphan*/  FUNC1 (struct blk_plug*) ; 
 void* FUNC2 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct orangefs_writepages*) ; 
 struct orangefs_writepages* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int FUNC5 () ; 
 int /*<<< orphan*/  orangefs_writepages_callback ; 
 int FUNC6 (struct orangefs_writepages*,struct writeback_control*) ; 
 int FUNC7 (struct address_space*,struct writeback_control*,int /*<<< orphan*/ ,struct orangefs_writepages*) ; 

__attribute__((used)) static int FUNC8(struct address_space *mapping,
    struct writeback_control *wbc)
{
	struct orangefs_writepages *ow;
	struct blk_plug plug;
	int ret;
	ow = FUNC4(sizeof(struct orangefs_writepages), GFP_KERNEL);
	if (!ow)
		return -ENOMEM;
	ow->maxpages = FUNC5()/PAGE_SIZE;
	ow->pages = FUNC2(ow->maxpages, sizeof(struct page *), GFP_KERNEL);
	if (!ow->pages) {
		FUNC3(ow);
		return -ENOMEM;
	}
	ow->bv = FUNC2(ow->maxpages, sizeof(struct bio_vec), GFP_KERNEL);
	if (!ow->bv) {
		FUNC3(ow->pages);
		FUNC3(ow);
		return -ENOMEM;
	}
	FUNC1(&plug);
	ret = FUNC7(mapping, wbc, orangefs_writepages_callback, ow);
	if (ow->npages)
		ret = FUNC6(ow, wbc);
	FUNC0(&plug);
	FUNC3(ow->pages);
	FUNC3(ow->bv);
	FUNC3(ow);
	return ret;
}