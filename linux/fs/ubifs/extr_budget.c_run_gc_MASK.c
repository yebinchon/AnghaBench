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
struct ubifs_info {int /*<<< orphan*/  commit_sem; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct ubifs_info*,int) ; 
 int FUNC3 (struct ubifs_info*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct ubifs_info *c)
{
	int err, lnum;

	/* Make some free space by garbage-collecting dirty space */
	FUNC1(&c->commit_sem);
	lnum = FUNC2(c, 1);
	FUNC4(&c->commit_sem);
	if (lnum < 0)
		return lnum;

	/* GC freed one LEB, return it to lprops */
	FUNC0("GC freed LEB %d", lnum);
	err = FUNC3(c, lnum);
	if (err)
		return err;
	return 0;
}