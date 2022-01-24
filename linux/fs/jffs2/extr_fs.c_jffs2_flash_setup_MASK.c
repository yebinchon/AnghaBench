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
struct jffs2_sb_info {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct jffs2_sb_info*) ; 
 scalar_t__ FUNC1 (struct jffs2_sb_info*) ; 
 int FUNC2 (struct jffs2_sb_info*) ; 
 int FUNC3 (struct jffs2_sb_info*) ; 
 scalar_t__ FUNC4 (struct jffs2_sb_info*) ; 
 int FUNC5 (struct jffs2_sb_info*) ; 
 scalar_t__ FUNC6 (struct jffs2_sb_info*) ; 
 int FUNC7 (struct jffs2_sb_info*) ; 

__attribute__((used)) static int FUNC8(struct jffs2_sb_info *c) {
	int ret = 0;

	if (FUNC0(c)) {
		/* NAND flash... do setup accordingly */
		ret = FUNC3(c);
		if (ret)
			return ret;
	}

	/* and Dataflash */
	if (FUNC1(c)) {
		ret = FUNC2(c);
		if (ret)
			return ret;
	}

	/* and Intel "Sibley" flash */
	if (FUNC4(c)) {
		ret = FUNC5(c);
		if (ret)
			return ret;
	}

	/* and an UBI volume */
	if (FUNC6(c)) {
		ret = FUNC7(c);
		if (ret)
			return ret;
	}

	return ret;
}