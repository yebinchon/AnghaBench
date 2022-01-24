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
struct rpcsec_gss_info {int dummy; } ;
struct rpc_authops {int /*<<< orphan*/  (* info2flavor ) (struct rpcsec_gss_info*) ;} ;
typedef  int /*<<< orphan*/  rpc_authflavor_t ;

/* Variables and functions */
 int /*<<< orphan*/  RPC_AUTH_MAXFLAVOR ; 
 struct rpc_authops* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rpc_authops const*) ; 
 int /*<<< orphan*/  FUNC2 (struct rpcsec_gss_info*) ; 

rpc_authflavor_t
FUNC3(rpc_authflavor_t flavor, struct rpcsec_gss_info *info)
{
	const struct rpc_authops *ops = FUNC0(flavor);
	rpc_authflavor_t pseudoflavor;

	if (!ops)
		return RPC_AUTH_MAXFLAVOR;
	pseudoflavor = flavor;
	if (ops->info2flavor != NULL)
		pseudoflavor = ops->info2flavor(info);

	FUNC1(ops);
	return pseudoflavor;
}