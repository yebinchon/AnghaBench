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
struct nfs_client {unsigned long cl_last_renewal; int /*<<< orphan*/  cl_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (unsigned long,unsigned long) ; 

__attribute__((used)) static void FUNC3(struct nfs_client *clp, unsigned long timestamp)
{
	FUNC0(&clp->cl_lock);
	if (FUNC2(clp->cl_last_renewal,timestamp))
		clp->cl_last_renewal = timestamp;
	FUNC1(&clp->cl_lock);
}