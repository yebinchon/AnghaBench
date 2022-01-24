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
struct TYPE_2__ {struct nfs4_client* sc_client; } ;
struct nfs4_ol_stateid {TYPE_1__ st_stid; } ;
struct nfs4_client {int /*<<< orphan*/  net; int /*<<< orphan*/  cl_lock; scalar_t__ cl_minorversion; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct nfs4_ol_stateid*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct nfs4_ol_stateid*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  reaplist ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (struct nfs4_ol_stateid*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct nfs4_ol_stateid *s)
{
	struct nfs4_client *clp = s->st_stid.sc_client;
	bool unhashed;
	FUNC0(reaplist);

	FUNC4(&clp->cl_lock);
	unhashed = FUNC6(s, &reaplist);

	if (clp->cl_minorversion) {
		if (unhashed)
			FUNC3(s, &reaplist);
		FUNC5(&clp->cl_lock);
		FUNC1(&reaplist);
	} else {
		FUNC5(&clp->cl_lock);
		FUNC1(&reaplist);
		if (unhashed)
			FUNC2(s, clp->net);
	}
}