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
struct TYPE_2__ {int sb_fs_size; int /*<<< orphan*/ * sb_bmp_dir; } ;

/* Variables and functions */
 unsigned int COUNT_RD_AHEAD ; 
 unsigned int FUNC0 (struct super_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct super_block*,unsigned int) ; 
 TYPE_1__* FUNC2 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned FUNC4(struct super_block *s)
{
	unsigned n, count, n_bands;
	n_bands = (FUNC2(s)->sb_fs_size + 0x3fff) >> 14;
	count = 0;
	for (n = 0; n < COUNT_RD_AHEAD; n++) {
		FUNC1(s, n);
	}
	for (n = 0; n < n_bands; n++) {
		unsigned c;
		FUNC1(s, n + COUNT_RD_AHEAD);
		c = FUNC0(s, FUNC3(FUNC2(s)->sb_bmp_dir[n]));
		if (c != (unsigned)-1)
			count += c;
	}
	return count;
}