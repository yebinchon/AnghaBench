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
struct inode {int dummy; } ;
struct ext4_extent {int /*<<< orphan*/  ee_block; } ;
struct ext4_ext_path {int p_depth; int /*<<< orphan*/  p_hdr; TYPE_1__* p_idx; struct ext4_extent* p_ext; } ;
typedef  int /*<<< orphan*/  handle_t ;
typedef  int /*<<< orphan*/  ext4_lblk_t ;
typedef  enum SHIFT_DIRECTION { ____Placeholder_SHIFT_DIRECTION } SHIFT_DIRECTION ;
struct TYPE_2__ {int /*<<< orphan*/  ei_block; } ;

/* Variables and functions */
 int EFSCORRUPTED ; 
 struct ext4_extent* FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ) ; 
 struct ext4_extent* FUNC2 (int /*<<< orphan*/ ) ; 
 int SHIFT_LEFT ; 
 int FUNC3 (int /*<<< orphan*/ *,struct inode*,struct ext4_ext_path*) ; 
 int FUNC4 (int /*<<< orphan*/ *,struct inode*,struct ext4_ext_path*) ; 
 scalar_t__ FUNC5 (struct inode*,struct ext4_ext_path*,struct ext4_extent*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(struct ext4_ext_path *path, ext4_lblk_t shift,
			    struct inode *inode, handle_t *handle,
			    enum SHIFT_DIRECTION SHIFT)
{
	int depth, err = 0;
	struct ext4_extent *ex_start, *ex_last;
	bool update = 0;
	depth = path->p_depth;

	while (depth >= 0) {
		if (depth == path->p_depth) {
			ex_start = path[depth].p_ext;
			if (!ex_start)
				return -EFSCORRUPTED;

			ex_last = FUNC2(path[depth].p_hdr);

			err = FUNC3(handle, inode, path + depth);
			if (err)
				goto out;

			if (ex_start == FUNC0(path[depth].p_hdr))
				update = 1;

			while (ex_start <= ex_last) {
				if (SHIFT == SHIFT_LEFT) {
					FUNC6(&ex_start->ee_block,
						-shift);
					/* Try to merge to the left. */
					if ((ex_start >
					    FUNC0(path[depth].p_hdr))
					    &&
					    FUNC5(inode,
					    path, ex_start - 1))
						ex_last--;
					else
						ex_start++;
				} else {
					FUNC6(&ex_last->ee_block, shift);
					FUNC5(inode, path,
						ex_last);
					ex_last--;
				}
			}
			err = FUNC4(handle, inode, path + depth);
			if (err)
				goto out;

			if (--depth < 0 || !update)
				break;
		}

		/* Update index too */
		err = FUNC3(handle, inode, path + depth);
		if (err)
			goto out;

		if (SHIFT == SHIFT_LEFT)
			FUNC6(&path[depth].p_idx->ei_block, -shift);
		else
			FUNC6(&path[depth].p_idx->ei_block, shift);
		err = FUNC4(handle, inode, path + depth);
		if (err)
			goto out;

		/* we are done if current index is not a starting index */
		if (path[depth].p_idx != FUNC1(path[depth].p_hdr))
			break;

		depth--;
	}

out:
	return err;
}