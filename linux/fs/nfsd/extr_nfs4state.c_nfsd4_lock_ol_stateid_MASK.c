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
struct nfs4_ol_stateid {int /*<<< orphan*/  st_mutex; int /*<<< orphan*/  st_stid; } ;
typedef  scalar_t__ __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  LOCK_STATEID_MUTEX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ nfs_ok ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static __be32
FUNC3(struct nfs4_ol_stateid *stp)
{
	__be32 ret;

	FUNC0(&stp->st_mutex, LOCK_STATEID_MUTEX);
	ret = FUNC2(&stp->st_stid);
	if (ret != nfs_ok)
		FUNC1(&stp->st_mutex);
	return ret;
}