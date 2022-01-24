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
struct nfs4_file {int /*<<< orphan*/  fi_delegees; struct nfsd_file* fi_deleg_file; } ;
struct TYPE_2__ {struct nfs4_file* sc_file; } ;
struct nfs4_delegation {TYPE_1__ dl_stid; } ;

/* Variables and functions */
 int /*<<< orphan*/  F_UNLCK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct nfs4_file*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ; 

__attribute__((used)) static void FUNC3(struct nfs4_delegation *dp)
{
	struct nfs4_file *fp = dp->dl_stid.sc_file;
	struct nfsd_file *nf = fp->fi_deleg_file;

	FUNC0(!fp->fi_delegees);

	FUNC2(nf->nf_file, F_UNLCK, NULL, (void **)&dp);
	FUNC1(fp);
}