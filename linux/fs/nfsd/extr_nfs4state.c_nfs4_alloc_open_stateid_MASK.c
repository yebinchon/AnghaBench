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
struct nfs4_ol_stateid {int dummy; } ;
struct nfs4_client {int dummy; } ;

/* Variables and functions */
 struct nfs4_stid* FUNC0 (struct nfs4_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nfs4_free_ol_stateid ; 
 struct nfs4_ol_stateid* FUNC1 (struct nfs4_stid*) ; 
 int /*<<< orphan*/  stateid_slab ; 

__attribute__((used)) static struct nfs4_ol_stateid * FUNC2(struct nfs4_client *clp)
{
	struct nfs4_stid *stid;

	stid = FUNC0(clp, stateid_slab, nfs4_free_ol_stateid);
	if (!stid)
		return NULL;

	return FUNC1(stid);
}