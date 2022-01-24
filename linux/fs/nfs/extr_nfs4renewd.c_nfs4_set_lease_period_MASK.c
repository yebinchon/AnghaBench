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
struct nfs_client {unsigned long cl_lease_time; unsigned long cl_last_renewal; int /*<<< orphan*/  cl_rpcclient; int /*<<< orphan*/  cl_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct nfs_client *clp,
		unsigned long lease,
		unsigned long lastrenewed)
{
	FUNC1(&clp->cl_lock);
	clp->cl_lease_time = lease;
	clp->cl_last_renewal = lastrenewed;
	FUNC2(&clp->cl_lock);

	/* Cap maximum reconnect timeout at 1/2 lease period */
	FUNC0(clp->cl_rpcclient, lease, lease >> 1);
}