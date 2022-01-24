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
struct super_block {int /*<<< orphan*/  s_inode_lru; } ;
struct shrink_control {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  freeable ; 
 int /*<<< orphan*/  inode_lru_isolate ; 
 long FUNC2 (int /*<<< orphan*/ *,struct shrink_control*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

long FUNC3(struct super_block *sb, struct shrink_control *sc)
{
	FUNC0(freeable);
	long freed;

	freed = FUNC2(&sb->s_inode_lru, sc,
				     inode_lru_isolate, &freeable);
	FUNC1(&freeable);
	return freed;
}