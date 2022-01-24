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
struct super_block {int /*<<< orphan*/  s_dentry_lru; } ;
struct shrink_control {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dentry_lru_isolate ; 
 int /*<<< orphan*/  dispose ; 
 long FUNC1 (int /*<<< orphan*/ *,struct shrink_control*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

long FUNC3(struct super_block *sb, struct shrink_control *sc)
{
	FUNC0(dispose);
	long freed;

	freed = FUNC1(&sb->s_dentry_lru, sc,
				     dentry_lru_isolate, &dispose);
	FUNC2(&dispose);
	return freed;
}