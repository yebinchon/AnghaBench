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
typedef  int u32 ;
struct TYPE_2__ {int /*<<< orphan*/  sc_file; } ;
struct nfs4_ol_stateid {TYPE_1__ st_stid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,struct nfs4_ol_stateid*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(u32 deny, struct nfs4_ol_stateid *stp)
{
	int i;
	bool change = false;

	for (i = 1; i < 4; i++) {
		if ((i & deny) != i) {
			change = true;
			FUNC0(i, stp);
		}
	}

	/* Recalculate per-file deny mode if there was a change */
	if (change)
		FUNC1(stp->st_stid.sc_file);
}