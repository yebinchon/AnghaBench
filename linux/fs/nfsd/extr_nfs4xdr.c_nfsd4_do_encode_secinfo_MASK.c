#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u32 ;
struct xdr_stream {int dummy; } ;
struct svc_export {size_t ex_nflavors; TYPE_3__* ex_client; struct exp_flavor_info* ex_flavors; } ;
struct TYPE_5__ {int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;
struct rpcsec_gss_info {scalar_t__ qop; scalar_t__ service; TYPE_2__ oid; } ;
struct exp_flavor_info {scalar_t__ pseudoflavor; } ;
typedef  scalar_t__ rpc_authflavor_t ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_6__ {TYPE_1__* flavour; } ;
struct TYPE_4__ {scalar_t__ flavour; } ;

/* Variables and functions */
 scalar_t__ RPC_AUTH_GSS ; 
 scalar_t__ RPC_AUTH_MAXFLAVOR ; 
 scalar_t__ RPC_AUTH_NULL ; 
 scalar_t__ RPC_AUTH_UNIX ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (size_t) ; 
 int /*<<< orphan*/  nfserr_resource ; 
 int /*<<< orphan*/  FUNC3 (char*,scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__,struct rpcsec_gss_info*) ; 
 scalar_t__ FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (struct xdr_stream*,int) ; 

__attribute__((used)) static __be32
FUNC8(struct xdr_stream *xdr, struct svc_export *exp)
{
	u32 i, nflavs, supported;
	struct exp_flavor_info *flavs;
	struct exp_flavor_info def_flavs[2];
	__be32 *p, *flavorsp;
	static bool report = true;

	if (exp->ex_nflavors) {
		flavs = exp->ex_flavors;
		nflavs = exp->ex_nflavors;
	} else { /* Handling of some defaults in absence of real secinfo: */
		flavs = def_flavs;
		if (exp->ex_client->flavour->flavour == RPC_AUTH_UNIX) {
			nflavs = 2;
			flavs[0].pseudoflavor = RPC_AUTH_UNIX;
			flavs[1].pseudoflavor = RPC_AUTH_NULL;
		} else if (exp->ex_client->flavour->flavour == RPC_AUTH_GSS) {
			nflavs = 1;
			flavs[0].pseudoflavor
					= FUNC5(exp->ex_client);
		} else {
			nflavs = 1;
			flavs[0].pseudoflavor
					= exp->ex_client->flavour->flavour;
		}
	}

	supported = 0;
	p = FUNC7(xdr, 4);
	if (!p)
		return nfserr_resource;
	flavorsp = p++;		/* to be backfilled later */

	for (i = 0; i < nflavs; i++) {
		rpc_authflavor_t pf = flavs[i].pseudoflavor;
		struct rpcsec_gss_info info;

		if (FUNC4(pf, &info) == 0) {
			supported++;
			p = FUNC7(xdr, 4 + 4 +
					      FUNC0(info.oid.len) + 4 + 4);
			if (!p)
				return nfserr_resource;
			*p++ = FUNC1(RPC_AUTH_GSS);
			p = FUNC6(p,  info.oid.data, info.oid.len);
			*p++ = FUNC1(info.qop);
			*p++ = FUNC1(info.service);
		} else if (pf < RPC_AUTH_MAXFLAVOR) {
			supported++;
			p = FUNC7(xdr, 4);
			if (!p)
				return nfserr_resource;
			*p++ = FUNC1(pf);
		} else {
			if (report)
				FUNC3("NFS: SECINFO: security flavor %u "
					"is not supported\n", pf);
		}
	}

	if (nflavs != supported)
		report = false;
	*flavorsp = FUNC2(supported);
	return 0;
}