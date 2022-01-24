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
struct nfs4_client {int /*<<< orphan*/  cl_rpc_users; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nfs_ok ; 
 int /*<<< orphan*/  nfserr_jukebox ; 
 int /*<<< orphan*/  FUNC1 (struct nfs4_client*) ; 

__attribute__((used)) static __be32 FUNC2(struct nfs4_client *clp)
{
	if (FUNC0(&clp->cl_rpc_users))
		return nfserr_jukebox;
	FUNC1(clp);
	return nfs_ok;
}