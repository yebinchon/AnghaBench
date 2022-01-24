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
struct ubifs_info {int cmt_orphans; } ;

/* Variables and functions */
 int FUNC0 (struct ubifs_info*) ; 
 int FUNC1 (struct ubifs_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct ubifs_info*,int) ; 
 int FUNC3 (struct ubifs_info*,int) ; 

__attribute__((used)) static int FUNC4(struct ubifs_info *c)
{
	int avail, atomic = 0, err;

	FUNC2(c, c->cmt_orphans > 0);
	avail = FUNC0(c);
	if (avail < c->cmt_orphans) {
		/* Not enough space to write new orphans, so consolidate */
		err = FUNC1(c);
		if (err)
			return err;
		atomic = 1;
	}
	err = FUNC3(c, atomic);
	return err;
}