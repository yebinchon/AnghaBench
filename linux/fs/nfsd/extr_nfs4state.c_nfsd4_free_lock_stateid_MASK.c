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
struct nfs4_stid {int /*<<< orphan*/  sc_stateid; } ;
struct TYPE_2__ {int /*<<< orphan*/  sc_file; } ;
struct nfs4_ol_stateid {int /*<<< orphan*/  st_mutex; int /*<<< orphan*/  st_stateowner; TYPE_1__ st_stid; } ;
typedef  int /*<<< orphan*/  stateid_t ;
typedef  scalar_t__ __be32 ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct nfs4_stid*) ; 
 scalar_t__ nfs_ok ; 
 scalar_t__ FUNC5 (struct nfs4_ol_stateid*) ; 
 scalar_t__ nfserr_locks_held ; 
 struct nfs4_ol_stateid* FUNC6 (struct nfs4_stid*) ; 
 int /*<<< orphan*/  FUNC7 (struct nfs4_ol_stateid*) ; 

__attribute__((used)) static __be32
FUNC8(stateid_t *stateid, struct nfs4_stid *s)
{
	struct nfs4_ol_stateid *stp = FUNC6(s);
	__be32 ret;

	ret = FUNC5(stp);
	if (ret)
		goto out_put_stid;

	ret = FUNC1(stateid, &s->sc_stateid, 1);
	if (ret)
		goto out;

	ret = nfserr_locks_held;
	if (FUNC0(stp->st_stid.sc_file,
			    FUNC2(stp->st_stateowner)))
		goto out;

	FUNC7(stp);
	ret = nfs_ok;

out:
	FUNC3(&stp->st_mutex);
out_put_stid:
	FUNC4(s);
	return ret;
}