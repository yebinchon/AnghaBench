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
struct nfs4_ff_layout_mirror {int /*<<< orphan*/  stateid; } ;
typedef  int /*<<< orphan*/  nfs4_stateid ;

/* Variables and functions */
 int FUNC0 (struct nfs4_ff_layout_mirror const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void
FUNC2(const struct nfs4_ff_layout_mirror *mirror,
		nfs4_stateid *stateid)
{
	if (FUNC0(mirror) == 4)
		FUNC1(stateid, &mirror->stateid);
}