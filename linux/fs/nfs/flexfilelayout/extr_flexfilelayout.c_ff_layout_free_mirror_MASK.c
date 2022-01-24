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
struct nfs4_ff_layout_mirror {int /*<<< orphan*/  mirror_ds; int /*<<< orphan*/  rw_cred; int /*<<< orphan*/  ro_cred; struct nfs4_ff_layout_mirror* fh_versions; } ;
struct cred {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nfs4_ff_layout_mirror*) ; 
 int /*<<< orphan*/  FUNC1 (struct nfs4_ff_layout_mirror*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct cred const*) ; 
 struct cred* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct nfs4_ff_layout_mirror *mirror)
{
	const struct cred	*cred;

	FUNC0(mirror);
	FUNC1(mirror->fh_versions);
	cred = FUNC4(mirror->ro_cred);
	FUNC3(cred);
	cred = FUNC4(mirror->rw_cred);
	FUNC3(cred);
	FUNC2(mirror->mirror_ds);
	FUNC1(mirror);
}