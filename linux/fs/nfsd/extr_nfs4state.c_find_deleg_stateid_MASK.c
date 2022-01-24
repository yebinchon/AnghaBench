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
struct nfs4_stid {int dummy; } ;
struct nfs4_delegation {int dummy; } ;
struct nfs4_client {int dummy; } ;
typedef  int /*<<< orphan*/  stateid_t ;

/* Variables and functions */
 int NFS4_DELEG_STID ; 
 int NFS4_REVOKED_DELEG_STID ; 
 struct nfs4_delegation* FUNC0 (struct nfs4_stid*) ; 
 struct nfs4_stid* FUNC1 (struct nfs4_client*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static struct nfs4_delegation *FUNC2(struct nfs4_client *cl, stateid_t *s)
{
	struct nfs4_stid *ret;

	ret = FUNC1(cl, s,
				NFS4_DELEG_STID|NFS4_REVOKED_DELEG_STID);
	if (!ret)
		return NULL;
	return FUNC0(ret);
}