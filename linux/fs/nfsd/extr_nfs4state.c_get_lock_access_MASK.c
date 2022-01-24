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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {struct nfs4_file* sc_file; } ;
struct nfs4_ol_stateid {TYPE_1__ st_stid; } ;
struct nfs4_file {int /*<<< orphan*/  fi_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nfs4_file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct nfs4_ol_stateid*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,struct nfs4_ol_stateid*) ; 

__attribute__((used)) static void FUNC4(struct nfs4_ol_stateid *lock_stp, u32 access)
{
	struct nfs4_file *fp = lock_stp->st_stid.sc_file;

	FUNC1(&fp->fi_lock);

	if (FUNC3(access, lock_stp))
		return;
	FUNC0(fp, access);
	FUNC2(access, lock_stp);
}