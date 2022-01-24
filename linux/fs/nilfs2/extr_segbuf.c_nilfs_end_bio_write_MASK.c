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
struct nilfs_segment_buffer {int /*<<< orphan*/  sb_bio_event; int /*<<< orphan*/  sb_err; } ;
struct bio {scalar_t__ bi_status; struct nilfs_segment_buffer* bi_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct bio*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct bio *bio)
{
	struct nilfs_segment_buffer *segbuf = bio->bi_private;

	if (bio->bi_status)
		FUNC0(&segbuf->sb_err);

	FUNC1(bio);
	FUNC2(&segbuf->sb_bio_event);
}