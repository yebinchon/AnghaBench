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
 int /*<<< orphan*/  FUNC2 (struct jffs2_sb_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct jffs2_sb_info*) ; 
 scalar_t__ FUNC4 (struct jffs2_sb_info*) ; 
 int /*<<< orphan*/  FUNC5 (struct jffs2_sb_info*) ; 
 scalar_t__ FUNC6 (struct jffs2_sb_info*) ; 
 int /*<<< orphan*/  FUNC7 (struct jffs2_sb_info*) ; 

void FUNC8(struct jffs2_sb_info *c) {

	if (FUNC0(c)) {
		FUNC3(c);
	}

	/* and DataFlash */
	if (FUNC1(c)) {
		FUNC2(c);
	}

	/* and Intel "Sibley" flash */
	if (FUNC4(c)) {
		FUNC5(c);
	}

	/* and an UBI volume */
	if (FUNC6(c)) {
		FUNC7(c);
	}
}