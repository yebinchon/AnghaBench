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
struct page {int dummy; } ;
struct iomap {scalar_t__ type; int /*<<< orphan*/  bdev; } ;
struct inode {int dummy; } ;
struct bio_vec {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  bi_sector; } ;
struct bio {TYPE_1__ bi_iter; int /*<<< orphan*/  bi_opf; } ;
typedef  scalar_t__ loff_t ;

/* Variables and functions */
 scalar_t__ IOMAP_MAPPED ; 
 int /*<<< orphan*/  REQ_OP_READ ; 
 int /*<<< orphan*/  FUNC0 (struct bio*,struct page*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct bio*,struct bio_vec*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct bio*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (struct iomap*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct page*,unsigned int,unsigned int) ; 
 int FUNC6 (struct bio*) ; 
 int /*<<< orphan*/  FUNC7 (struct page*,unsigned int,unsigned int,unsigned int,unsigned int) ; 

__attribute__((used)) static int
FUNC8(struct inode *inode, loff_t block_start, struct page *page,
		unsigned poff, unsigned plen, unsigned from, unsigned to,
		struct iomap *iomap)
{
	struct bio_vec bvec;
	struct bio bio;

	if (iomap->type != IOMAP_MAPPED || block_start >= FUNC3(inode)) {
		FUNC7(page, poff, from, to, poff + plen);
		FUNC5(page, poff, plen);
		return 0;
	}

	FUNC1(&bio, &bvec, 1);
	bio.bi_opf = REQ_OP_READ;
	bio.bi_iter.bi_sector = FUNC4(iomap, block_start);
	FUNC2(&bio, iomap->bdev);
	FUNC0(&bio, page, plen, poff);
	return FUNC6(&bio);
}