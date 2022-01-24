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
struct TYPE_2__ {int sb_chk; int /*<<< orphan*/  sb_cp_table; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (unsigned char*,unsigned int) ; 
 TYPE_1__* FUNC1 (struct super_block*) ; 
 unsigned char* FUNC2 (unsigned int,int /*<<< orphan*/ ) ; 
 unsigned char FUNC3 (int /*<<< orphan*/ ,unsigned char) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

unsigned char *FUNC6(struct super_block *s, unsigned char *from,
			  unsigned len, int lc, int lng)
{
	unsigned char *to;
	int i;
	if (FUNC1(s)->sb_chk >= 2) if (FUNC0(from, len) != lng) {
		FUNC5("Long name flag mismatch - name ");
		for (i = 0; i < len; i++)
			FUNC4("%c", from[i]);
		FUNC4(" misidentified as %s.\n", lng ? "short" : "long");
		FUNC5("It's nothing serious. It could happen because of bug in OS/2.\nSet checks=normal to disable this message.\n");
	}
	if (!lc) return from;
	if (!(to = FUNC2(len, GFP_KERNEL))) {
		FUNC5("can't allocate memory for name conversion buffer\n");
		return from;
	}
	for (i = 0; i < len; i++) to[i] = FUNC3(FUNC1(s)->sb_cp_table,from[i]);
	return to;
}