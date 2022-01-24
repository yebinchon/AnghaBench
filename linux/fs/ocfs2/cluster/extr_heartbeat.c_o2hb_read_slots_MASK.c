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
struct o2hb_bio_wait_ctxt {int wc_error; int /*<<< orphan*/  wc_num_reqs; } ;
struct bio {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct bio*) ; 
 int FUNC1 (struct bio*) ; 
 int /*<<< orphan*/  REQ_OP_READ ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct o2hb_bio_wait_ctxt*) ; 
 struct bio* FUNC5 (struct o2hb_region*,struct o2hb_bio_wait_ctxt*,unsigned int*,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct o2hb_bio_wait_ctxt*) ; 
 int /*<<< orphan*/  FUNC7 (struct bio*) ; 

__attribute__((used)) static int FUNC8(struct o2hb_region *reg,
			   unsigned int begin_slot,
			   unsigned int max_slots)
{
	unsigned int current_slot = begin_slot;
	int status;
	struct o2hb_bio_wait_ctxt wc;
	struct bio *bio;

	FUNC4(&wc);

	while(current_slot < max_slots) {
		bio = FUNC5(reg, &wc, &current_slot, max_slots,
					 REQ_OP_READ, 0);
		if (FUNC0(bio)) {
			status = FUNC1(bio);
			FUNC3(status);
			goto bail_and_wait;
		}

		FUNC2(&wc.wc_num_reqs);
		FUNC7(bio);
	}

	status = 0;

bail_and_wait:
	FUNC6(&wc);
	if (wc.wc_error && !status)
		status = wc.wc_error;

	return status;
}