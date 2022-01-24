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
struct super_block {int dummy; } ;
struct buffer_head {int dummy; } ;
struct blk_plug {int dummy; } ;
struct TYPE_2__ {unsigned int sb_fs_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct blk_plug*) ; 
 int /*<<< orphan*/  FUNC1 (struct blk_plug*) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*) ; 
 scalar_t__ FUNC3 (struct buffer_head*) ; 
 TYPE_1__* FUNC4 (struct super_block*) ; 
 int FUNC5 (struct super_block*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct super_block*,unsigned int) ; 
 struct buffer_head* FUNC7 (struct super_block*,unsigned int) ; 
 scalar_t__ FUNC8 (int) ; 

void FUNC9(struct super_block *s, unsigned secno, int n)
{
	struct buffer_head *bh;
	struct blk_plug plug;

	if (n <= 0 || FUNC8(secno >= FUNC4(s)->sb_fs_size))
		return;

	if (FUNC8(FUNC5(s, secno, n) != n))
		return;

	bh = FUNC7(s, secno);
	if (bh) {
		if (FUNC3(bh)) {
			FUNC2(bh);
			return;
		}
		FUNC2(bh);
	};

	FUNC1(&plug);
	while (n > 0) {
		if (FUNC8(secno >= FUNC4(s)->sb_fs_size))
			break;
		FUNC6(s, secno);
		secno++;
		n--;
	}
	FUNC0(&plug);
}