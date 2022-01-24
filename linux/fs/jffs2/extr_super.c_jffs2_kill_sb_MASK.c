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
struct super_block {int dummy; } ;
struct jffs2_sb_info {int dummy; } ;

/* Variables and functions */
 struct jffs2_sb_info* FUNC0 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC1 (struct jffs2_sb_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct jffs2_sb_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC4 (struct super_block*) ; 

__attribute__((used)) static void FUNC5(struct super_block *sb)
{
	struct jffs2_sb_info *c = FUNC0(sb);
	if (c && !FUNC4(sb))
		FUNC1(c);
	FUNC3(sb);
	FUNC2(c);
}