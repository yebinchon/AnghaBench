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

/* Variables and functions */
 scalar_t__ FUNC0 (struct super_block*,int) ; 
 int FUNC1 (struct super_block*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct super_block*) ; 

__attribute__((used)) static inline int FUNC3(struct super_block *sb)
{
	int blocks = FUNC1(sb, 0, 0);

	/* links can be longer than one block so we may update many
	 * within our single allocated extent. */
	blocks += FUNC0(sb, 1);

	return blocks + FUNC2(sb);
}