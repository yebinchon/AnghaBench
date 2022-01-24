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
struct ubifs_lprops {int dummy; } ;
struct ubifs_lp_stats {int dummy; } ;
struct ubifs_info {int main_first; int leb_cnt; } ;
struct TYPE_2__ {int /*<<< orphan*/  pid; } ;

/* Variables and functions */
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ubifs_info*,struct ubifs_lprops*) ; 
 int /*<<< orphan*/  FUNC2 (struct ubifs_lp_stats*) ; 
 int /*<<< orphan*/  FUNC3 (struct ubifs_info*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ubifs_info*,struct ubifs_lp_stats*) ; 
 int FUNC5 (struct ubifs_info*,int,struct ubifs_lprops*) ; 

void FUNC6(struct ubifs_info *c)
{
	int lnum, err;
	struct ubifs_lprops lp;
	struct ubifs_lp_stats lst;

	FUNC0("(pid %d) start dumping LEB properties\n", current->pid);
	FUNC4(c, &lst);
	FUNC2(&lst);

	for (lnum = c->main_first; lnum < c->leb_cnt; lnum++) {
		err = FUNC5(c, lnum, &lp);
		if (err) {
			FUNC3(c, "cannot read lprops for LEB %d", lnum);
			continue;
		}

		FUNC1(c, &lp);
	}
	FUNC0("(pid %d) finish dumping LEB properties\n", current->pid);
}