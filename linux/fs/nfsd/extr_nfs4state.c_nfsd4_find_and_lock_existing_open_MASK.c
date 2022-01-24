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
struct nfsd4_open {int dummy; } ;
struct nfs4_ol_stateid {int /*<<< orphan*/  st_stid; } ;
struct nfs4_file {int /*<<< orphan*/  fi_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ nfs_ok ; 
 struct nfs4_ol_stateid* FUNC1 (struct nfs4_file*,struct nfsd4_open*) ; 
 scalar_t__ FUNC2 (struct nfs4_ol_stateid*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct nfs4_ol_stateid *
FUNC5(struct nfs4_file *fp, struct nfsd4_open *open)
{
	struct nfs4_ol_stateid *stp;
	for (;;) {
		FUNC3(&fp->fi_lock);
		stp = FUNC1(fp, open);
		FUNC4(&fp->fi_lock);
		if (!stp || FUNC2(stp) == nfs_ok)
			break;
		FUNC0(&stp->st_stid);
	}
	return stp;
}