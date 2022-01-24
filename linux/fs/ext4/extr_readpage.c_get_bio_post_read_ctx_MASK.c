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
struct inode {int /*<<< orphan*/  i_mode; } ;
struct bio_post_read_ctx {unsigned int enabled_steps; struct bio* bio; } ;
struct bio {struct bio_post_read_ctx* bi_private; } ;
typedef  int /*<<< orphan*/  pgoff_t ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct bio_post_read_ctx* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 scalar_t__ FUNC1 (struct inode*) ; 
 int STEP_DECRYPT ; 
 int STEP_VERITY ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bio_post_read_ctx_pool ; 
 scalar_t__ FUNC3 (struct inode*,int /*<<< orphan*/ ) ; 
 struct bio_post_read_ctx* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct bio_post_read_ctx *FUNC5(struct inode *inode,
						       struct bio *bio,
						       pgoff_t first_idx)
{
	unsigned int post_read_steps = 0;
	struct bio_post_read_ctx *ctx = NULL;

	if (FUNC1(inode) && FUNC2(inode->i_mode))
		post_read_steps |= 1 << STEP_DECRYPT;

	if (FUNC3(inode, first_idx))
		post_read_steps |= 1 << STEP_VERITY;

	if (post_read_steps) {
		ctx = FUNC4(bio_post_read_ctx_pool, GFP_NOFS);
		if (!ctx)
			return FUNC0(-ENOMEM);
		ctx->bio = bio;
		ctx->enabled_steps = post_read_steps;
		bio->bi_private = ctx;
	}
	return ctx;
}