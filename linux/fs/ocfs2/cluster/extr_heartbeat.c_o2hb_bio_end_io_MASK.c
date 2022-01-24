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
struct o2hb_bio_wait_ctxt {int /*<<< orphan*/  wc_error; } ;
struct bio {scalar_t__ bi_status; struct o2hb_bio_wait_ctxt* bi_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  ML_ERROR ; 
 int /*<<< orphan*/  FUNC0 (struct bio*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct o2hb_bio_wait_ctxt*,int) ; 

__attribute__((used)) static void FUNC4(struct bio *bio)
{
	struct o2hb_bio_wait_ctxt *wc = bio->bi_private;

	if (bio->bi_status) {
		FUNC2(ML_ERROR, "IO Error %d\n", bio->bi_status);
		wc->wc_error = FUNC1(bio->bi_status);
	}

	FUNC3(wc, 1);
	FUNC0(bio);
}