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
struct nfs4_client {int /*<<< orphan*/  cl_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  NFSD4_CLIENT_UPCALL_LOCK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct nfs4_client *clp)
{
	FUNC2();
	FUNC0(NFSD4_CLIENT_UPCALL_LOCK, &clp->cl_flags);
	FUNC1();
	FUNC3(&clp->cl_flags, NFSD4_CLIENT_UPCALL_LOCK);
}