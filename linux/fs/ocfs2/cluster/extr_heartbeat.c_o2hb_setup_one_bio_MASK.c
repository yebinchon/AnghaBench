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
struct o2hb_region {unsigned int hr_block_bits; unsigned int hr_slots_per_page; unsigned int hr_start_block; struct page** hr_slot_data; int /*<<< orphan*/  hr_bdev; } ;
struct o2hb_bio_wait_ctxt {int dummy; } ;
struct TYPE_2__ {unsigned int bi_sector; } ;
struct bio {int /*<<< orphan*/  bi_end_io; struct o2hb_bio_wait_ctxt* bi_private; TYPE_1__ bi_iter; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct bio* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  ML_ERROR ; 
 int /*<<< orphan*/  ML_HB_BIO ; 
 unsigned int PAGE_SIZE ; 
 int FUNC1 (struct bio*,struct page*,unsigned int,unsigned int) ; 
 struct bio* FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct bio*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct bio*,int,int) ; 
 unsigned int FUNC5 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  o2hb_bio_end_io ; 

__attribute__((used)) static struct bio *FUNC7(struct o2hb_region *reg,
				      struct o2hb_bio_wait_ctxt *wc,
				      unsigned int *current_slot,
				      unsigned int max_slots, int op,
				      int op_flags)
{
	int len, current_page;
	unsigned int vec_len, vec_start;
	unsigned int bits = reg->hr_block_bits;
	unsigned int spp = reg->hr_slots_per_page;
	unsigned int cs = *current_slot;
	struct bio *bio;
	struct page *page;

	/* Testing has shown this allocation to take long enough under
	 * GFP_KERNEL that the local node can get fenced. It would be
	 * nicest if we could pre-allocate these bios and avoid this
	 * all together. */
	bio = FUNC2(GFP_ATOMIC, 16);
	if (!bio) {
		FUNC6(ML_ERROR, "Could not alloc slots BIO!\n");
		bio = FUNC0(-ENOMEM);
		goto bail;
	}

	/* Must put everything in 512 byte sectors for the bio... */
	bio->bi_iter.bi_sector = (reg->hr_start_block + cs) << (bits - 9);
	FUNC3(bio, reg->hr_bdev);
	bio->bi_private = wc;
	bio->bi_end_io = o2hb_bio_end_io;
	FUNC4(bio, op, op_flags);

	vec_start = (cs << bits) % PAGE_SIZE;
	while(cs < max_slots) {
		current_page = cs / spp;
		page = reg->hr_slot_data[current_page];

		vec_len = FUNC5(PAGE_SIZE - vec_start,
			      (max_slots-cs) * (PAGE_SIZE/spp) );

		FUNC6(ML_HB_BIO, "page %d, vec_len = %u, vec_start = %u\n",
		     current_page, vec_len, vec_start);

		len = FUNC1(bio, page, vec_len, vec_start);
		if (len != vec_len) break;

		cs += vec_len / (PAGE_SIZE/spp);
		vec_start = 0;
	}

bail:
	*current_slot = cs;
	return bio;
}