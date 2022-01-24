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
struct the_nilfs {int /*<<< orphan*/  ns_dat; } ;
struct nilfs_bmap {int dummy; } ;
struct nilfs_bdesc {scalar_t__ bd_level; scalar_t__ bd_blocknr; scalar_t__ bd_oblocknr; int /*<<< orphan*/  bd_offset; } ;
struct nilfs_argv {size_t v_nmembs; } ;
struct buffer_head {int dummy; } ;
struct TYPE_2__ {struct nilfs_bmap* i_bmap; } ;

/* Variables and functions */
 int ENOENT ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*) ; 
 int FUNC3 (struct nilfs_bmap*,int /*<<< orphan*/ ,scalar_t__,scalar_t__*) ; 
 int FUNC4 (struct nilfs_bmap*,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,struct buffer_head**) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct buffer_head*) ; 
 scalar_t__ FUNC8 (int) ; 

__attribute__((used)) static int FUNC9(struct the_nilfs *nilfs,
					 struct nilfs_argv *argv, void *buf)
{
	size_t nmembs = argv->v_nmembs;
	struct nilfs_bmap *bmap = FUNC0(nilfs->ns_dat)->i_bmap;
	struct nilfs_bdesc *bdescs = buf;
	struct buffer_head *bh;
	int ret, i;

	for (i = 0; i < nmembs; i++) {
		/* XXX: use macro or inline func to check liveness */
		ret = FUNC3(bmap,
						 bdescs[i].bd_offset,
						 bdescs[i].bd_level + 1,
						 &bdescs[i].bd_blocknr);
		if (ret < 0) {
			if (ret != -ENOENT)
				return ret;
			bdescs[i].bd_blocknr = 0;
		}
		if (bdescs[i].bd_blocknr != bdescs[i].bd_oblocknr)
			/* skip dead block */
			continue;
		if (bdescs[i].bd_level == 0) {
			ret = FUNC5(nilfs->ns_dat,
						  bdescs[i].bd_offset,
						  false, NULL, &bh);
			if (FUNC8(ret)) {
				FUNC1(ret == -ENOENT);
				return ret;
			}
			FUNC2(bh);
			FUNC6(nilfs->ns_dat);
			FUNC7(bh);
		} else {
			ret = FUNC4(bmap, bdescs[i].bd_offset,
					      bdescs[i].bd_level);
			if (ret < 0) {
				FUNC1(ret == -ENOENT);
				return ret;
			}
		}
	}
	return nmembs;
}