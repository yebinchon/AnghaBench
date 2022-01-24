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
struct nfsd_file {int /*<<< orphan*/  nf_file; } ;
struct nfs4_stid {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  sc_file; } ;
struct nfs4_ol_stateid {TYPE_1__ st_stid; int /*<<< orphan*/  st_stateowner; } ;
struct nfs4_lockowner {int dummy; } ;
typedef  int /*<<< orphan*/  fl_owner_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct nfsd_file* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct nfs4_lockowner* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct nfs4_stid*) ; 
 int /*<<< orphan*/  FUNC5 (struct nfsd_file*) ; 
 struct nfs4_ol_stateid* FUNC6 (struct nfs4_stid*) ; 

__attribute__((used)) static void FUNC7(struct nfs4_stid *stid)
{
	struct nfs4_ol_stateid *stp = FUNC6(stid);
	struct nfs4_lockowner *lo = FUNC3(stp->st_stateowner);
	struct nfsd_file *nf;

	nf = FUNC1(stp->st_stid.sc_file);
	if (nf) {
		FUNC2(nf->nf_file);
		FUNC0(nf->nf_file, (fl_owner_t)lo);
		FUNC5(nf);
	}
	FUNC4(stid);
}