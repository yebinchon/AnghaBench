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
struct TYPE_2__ {scalar_t__ znode; } ;
struct ubifs_info {int /*<<< orphan*/  ilebs; int /*<<< orphan*/  gap_lebs; TYPE_1__ zroot; int /*<<< orphan*/  clean_zn_cnt; } ;

/* Variables and functions */
 long FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (long,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ubifs_info*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ubifs_info*) ; 
 int /*<<< orphan*/  FUNC5 (struct ubifs_info*,int) ; 
 int /*<<< orphan*/  ubifs_clean_zn_cnt ; 
 long FUNC6 (struct ubifs_info*,scalar_t__) ; 

void FUNC7(struct ubifs_info *c)
{
	FUNC4(c);
	if (c->zroot.znode) {
		long n, freed;

		n = FUNC0(&c->clean_zn_cnt);
		freed = FUNC6(c, c->zroot.znode);
		FUNC5(c, freed == n);
		FUNC1(n, &ubifs_clean_zn_cnt);
	}
	FUNC3(c->gap_lebs);
	FUNC3(c->ilebs);
	FUNC2(c);
}