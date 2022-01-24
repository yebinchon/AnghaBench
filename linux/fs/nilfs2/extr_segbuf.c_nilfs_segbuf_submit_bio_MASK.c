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
struct nilfs_write_info {struct bio* bio; scalar_t__ end; scalar_t__ start; int /*<<< orphan*/  rest_blocks; int /*<<< orphan*/  max_pages; int /*<<< orphan*/  nr_vecs; } ;
struct nilfs_segment_buffer {scalar_t__ sb_nbio; int /*<<< orphan*/  sb_err; int /*<<< orphan*/  sb_bio_event; TYPE_1__* sb_super; } ;
struct bio {struct nilfs_segment_buffer* bi_private; int /*<<< orphan*/  bi_end_io; } ;
struct TYPE_2__ {int /*<<< orphan*/  s_bdi; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bio*) ; 
 int /*<<< orphan*/  FUNC3 (struct bio*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nilfs_end_bio_write ; 
 int /*<<< orphan*/  FUNC5 (struct bio*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct nilfs_segment_buffer *segbuf,
				   struct nilfs_write_info *wi, int mode,
				   int mode_flags)
{
	struct bio *bio = wi->bio;
	int err;

	if (segbuf->sb_nbio > 0 &&
	    FUNC1(segbuf->sb_super->s_bdi)) {
		FUNC7(&segbuf->sb_bio_event);
		segbuf->sb_nbio--;
		if (FUNC6(FUNC0(&segbuf->sb_err))) {
			FUNC2(bio);
			err = -EIO;
			goto failed;
		}
	}

	bio->bi_end_io = nilfs_end_bio_write;
	bio->bi_private = segbuf;
	FUNC3(bio, mode, mode_flags);
	FUNC5(bio);
	segbuf->sb_nbio++;

	wi->bio = NULL;
	wi->rest_blocks -= wi->end - wi->start;
	wi->nr_vecs = FUNC4(wi->max_pages, wi->rest_blocks);
	wi->start = wi->end;
	return 0;

 failed:
	wi->bio = NULL;
	return err;
}