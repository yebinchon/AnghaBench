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
struct nfs_server {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  type; } ;
struct nfs_delegation {TYPE_1__ stateid; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  NFS4_INVALID_STATEID_TYPE ; 
 int /*<<< orphan*/  NFS_DELEGATION_REVOKED ; 
 int /*<<< orphan*/  FUNC0 (struct nfs_server*,struct nfs_delegation*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct nfs_server *server,
		struct nfs_delegation *delegation)
{
	FUNC1(NFS_DELEGATION_REVOKED, &delegation->flags);
	delegation->stateid.type = NFS4_INVALID_STATEID_TYPE;
	FUNC0(server, delegation);
}