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
struct TYPE_2__ {int /*<<< orphan*/  bi_sector; } ;
struct bio {int /*<<< orphan*/  bi_write_hint; int /*<<< orphan*/  bi_opf; TYPE_1__ bi_iter; } ;

/* Variables and functions */
 int /*<<< orphan*/  BIO_MAX_PAGES ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 struct bio* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bio*,struct bio*) ; 
 int /*<<< orphan*/  FUNC2 (struct bio*,struct bio*) ; 
 int /*<<< orphan*/  FUNC3 (struct bio*) ; 
 int /*<<< orphan*/  FUNC4 (struct bio*) ; 
 int /*<<< orphan*/  FUNC5 (struct bio*) ; 

__attribute__((used)) static struct bio *
FUNC6(
	struct bio		*prev)
{
	struct bio *new;

	new = FUNC0(GFP_NOFS, BIO_MAX_PAGES);
	FUNC2(new, prev);/* also copies over blkcg information */
	new->bi_iter.bi_sector = FUNC3(prev);
	new->bi_opf = prev->bi_opf;
	new->bi_write_hint = prev->bi_write_hint;

	FUNC1(prev, new);
	FUNC4(prev);		/* for xfs_destroy_ioend */
	FUNC5(prev);
	return new;
}