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
typedef  int /*<<< orphan*/  u64 ;
struct omfs_inode {scalar_t__ i_type; int /*<<< orphan*/  i_name; int /*<<< orphan*/  i_sibling; int /*<<< orphan*/  i_head; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct dir_context {int /*<<< orphan*/  pos; } ;
struct buffer_head {scalar_t__ b_data; } ;

/* Variables and functions */
 unsigned char DT_DIR ; 
 unsigned char DT_REG ; 
 scalar_t__ OMFS_DIR ; 
 int /*<<< orphan*/  OMFS_NAMELEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC3 (struct dir_context*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char) ; 
 struct buffer_head* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC7(struct inode *dir, struct dir_context *ctx,
		u64 fsblock, int hindex)
{
	/* follow chain in this bucket */
	while (fsblock != ~0) {
		struct buffer_head *bh = FUNC4(dir->i_sb, fsblock);
		struct omfs_inode *oi;
		u64 self;
		unsigned char d_type;

		if (!bh)
			return true;

		oi = (struct omfs_inode *) bh->b_data;
		if (FUNC5(FUNC0(dir->i_sb), &oi->i_head, fsblock)) {
			FUNC2(bh);
			return true;
		}

		self = fsblock;
		fsblock = FUNC1(oi->i_sibling);

		/* skip visited nodes */
		if (hindex) {
			hindex--;
			FUNC2(bh);
			continue;
		}

		d_type = (oi->i_type == OMFS_DIR) ? DT_DIR : DT_REG;

		if (!FUNC3(ctx, oi->i_name,
			      FUNC6(oi->i_name, OMFS_NAMELEN),
			      self, d_type)) {
			FUNC2(bh);
			return false;
		}
		FUNC2(bh);
		ctx->pos++;
	}
	return true;
}