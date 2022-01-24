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
struct o2hb_region {int dummy; } ;
struct o2hb_bio_wait_ctxt {int /*<<< orphan*/  wc_num_reqs; } ;
struct bio {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct bio*) ; 
 int FUNC1 (struct bio*) ; 
 int /*<<< orphan*/  REQ_OP_WRITE ; 
 int /*<<< orphan*/  REQ_SYNC ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct o2hb_bio_wait_ctxt*) ; 
 struct bio* FUNC5 (struct o2hb_region*,struct o2hb_bio_wait_ctxt*,unsigned int*,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct bio*) ; 

__attribute__((used)) static int FUNC8(struct o2hb_region *reg,
				 struct o2hb_bio_wait_ctxt *write_wc)
{
	int status;
	unsigned int slot;
	struct bio *bio;

	FUNC4(write_wc);

	slot = FUNC6();

	bio = FUNC5(reg, write_wc, &slot, slot+1, REQ_OP_WRITE,
				 REQ_SYNC);
	if (FUNC0(bio)) {
		status = FUNC1(bio);
		FUNC3(status);
		goto bail;
	}

	FUNC2(&write_wc->wc_num_reqs);
	FUNC7(bio);

	status = 0;
bail:
	return status;
}