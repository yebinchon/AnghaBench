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
typedef  int u32 ;
struct inode {int dummy; } ;
struct gfs2_inode {unsigned int i_depth; int /*<<< orphan*/ * i_hash_cache; } ;
struct file_ra_state {scalar_t__ start; } ;
struct dir_context {int /*<<< orphan*/  pos; } ;
typedef  int /*<<< orphan*/  __be64 ;

/* Variables and functions */
 int FUNC0 (unsigned int) ; 
 struct gfs2_inode* FUNC1 (struct inode*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (struct gfs2_inode*) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (struct inode*,struct dir_context*,int*,unsigned int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*,int,int,struct file_ra_state*) ; 

__attribute__((used)) static int FUNC9(struct inode *inode, struct dir_context *ctx,
		      struct file_ra_state *f_ra)
{
	struct gfs2_inode *dip = FUNC1(inode);
	u32 hsize, len = 0;
	u32 hash, index;
	__be64 *lp;
	int copied = 0;
	int error = 0;
	unsigned depth = 0;

	hsize = FUNC0(dip->i_depth);
	hash = FUNC6(ctx->pos);
	index = hash >> (32 - dip->i_depth);

	if (dip->i_hash_cache == NULL)
		f_ra->start = 0;
	lp = FUNC5(dip);
	if (FUNC2(lp))
		return FUNC3(lp);

	FUNC8(inode, hsize, index, f_ra);

	while (index < hsize) {
		error = FUNC7(inode, ctx,
					   &copied, &depth,
					   FUNC4(lp[index]));
		if (error)
			break;

		len = FUNC0(dip->i_depth - depth);
		index = (index & ~(len - 1)) + len;
	}

	if (error > 0)
		error = 0;
	return error;
}