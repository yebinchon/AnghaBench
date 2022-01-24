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
struct buffer_head {int /*<<< orphan*/  (* b_end_io ) (struct buffer_head*,int) ;int /*<<< orphan*/  b_state; } ;
struct bio {int /*<<< orphan*/  bi_status; struct buffer_head* bi_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  BH_Quiet ; 
 int /*<<< orphan*/  BIO_QUIET ; 
 int /*<<< orphan*/  FUNC0 (struct bio*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bio*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct buffer_head*,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct bio *bio)
{
	struct buffer_head *bh = bio->bi_private;

	if (FUNC4(FUNC0(bio, BIO_QUIET)))
		FUNC2(BH_Quiet, &bh->b_state);

	bh->b_end_io(bh, !bio->bi_status);
	FUNC1(bio);
}