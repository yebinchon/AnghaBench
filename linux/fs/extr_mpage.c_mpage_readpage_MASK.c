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
struct mpage_readpage_args {int nr_pages; scalar_t__ bio; int /*<<< orphan*/  get_block; struct page* page; } ;
typedef  int /*<<< orphan*/  get_block_t ;

/* Variables and functions */
 int /*<<< orphan*/  REQ_OP_READ ; 
 scalar_t__ FUNC0 (struct mpage_readpage_args*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 

int FUNC2(struct page *page, get_block_t get_block)
{
	struct mpage_readpage_args args = {
		.page = page,
		.nr_pages = 1,
		.get_block = get_block,
	};

	args.bio = FUNC0(&args);
	if (args.bio)
		FUNC1(REQ_OP_READ, 0, args.bio);
	return 0;
}