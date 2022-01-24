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
struct rpcsec_gss_info {int /*<<< orphan*/  service; int /*<<< orphan*/  qop; int /*<<< orphan*/  oid; } ;
struct gss_api_mech {int dummy; } ;
typedef  int /*<<< orphan*/  rpc_authflavor_t ;

/* Variables and functions */
 int /*<<< orphan*/  RPC_AUTH_MAXFLAVOR ; 
 struct gss_api_mech* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct gss_api_mech*) ; 
 int /*<<< orphan*/  FUNC2 (struct gss_api_mech*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

rpc_authflavor_t FUNC3(struct rpcsec_gss_info *info)
{
	rpc_authflavor_t pseudoflavor;
	struct gss_api_mech *gm;

	gm = FUNC0(&info->oid);
	if (gm == NULL)
		return RPC_AUTH_MAXFLAVOR;

	pseudoflavor = FUNC2(gm, info->qop, info->service);

	FUNC1(gm);
	return pseudoflavor;
}