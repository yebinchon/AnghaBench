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
struct nfs_delegation {int type; int /*<<< orphan*/  flags; } ;
typedef  int fmode_t ;

/* Variables and functions */
 int /*<<< orphan*/  NFS_DELEGATION_RETURNING ; 
 int /*<<< orphan*/  NFS_DELEGATION_REVOKED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool
FUNC1(const struct nfs_delegation *delegation,
		fmode_t flags)
{
	if (delegation != NULL && (delegation->type & flags) == flags &&
	    !FUNC0(NFS_DELEGATION_REVOKED, &delegation->flags) &&
	    !FUNC0(NFS_DELEGATION_RETURNING, &delegation->flags))
		return true;
	return false;
}