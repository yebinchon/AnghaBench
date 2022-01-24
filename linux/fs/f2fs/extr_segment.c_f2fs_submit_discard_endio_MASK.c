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
struct discard_cmd {scalar_t__ state; int /*<<< orphan*/  lock; int /*<<< orphan*/  wait; int /*<<< orphan*/  bio_ref; int /*<<< orphan*/  error; } ;
struct bio {int /*<<< orphan*/  bi_status; scalar_t__ bi_private; } ;

/* Variables and functions */
 scalar_t__ D_DONE ; 
 scalar_t__ D_SUBMIT ; 
 int /*<<< orphan*/  FUNC0 (struct bio*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC5(struct bio *bio)
{
	struct discard_cmd *dc = (struct discard_cmd *)bio->bi_private;
	unsigned long flags;

	dc->error = FUNC1(bio->bi_status);

	FUNC3(&dc->lock, flags);
	dc->bio_ref--;
	if (!dc->bio_ref && dc->state == D_SUBMIT) {
		dc->state = D_DONE;
		FUNC2(&dc->wait);
	}
	FUNC4(&dc->lock, flags);
	FUNC0(bio);
}