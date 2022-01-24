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
struct TYPE_2__ {struct nfs4_file* sc_file; } ;
struct nfs4_ol_stateid {scalar_t__ st_deny_bmap; TYPE_1__ st_stid; } ;
struct nfs4_file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,struct nfs4_ol_stateid*) ; 
 int /*<<< orphan*/  FUNC1 (struct nfs4_file*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct nfs4_file*) ; 
 scalar_t__ FUNC3 (int,struct nfs4_ol_stateid*) ; 

__attribute__((used)) static void
FUNC4(struct nfs4_ol_stateid *stp)
{
	int i;
	struct nfs4_file *fp = stp->st_stid.sc_file;

	if (fp && stp->st_deny_bmap != 0)
		FUNC2(fp);

	for (i = 1; i < 4; i++) {
		if (FUNC3(i, stp))
			FUNC1(stp->st_stid.sc_file, i);
		FUNC0(i, stp);
	}
}