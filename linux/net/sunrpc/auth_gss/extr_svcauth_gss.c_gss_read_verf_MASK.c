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
struct xdr_netobj {int /*<<< orphan*/  data; } ;
struct rpc_gss_wire_cred {int dummy; } ;
struct kvec {int dummy; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int SVC_CLOSE ; 
 int SVC_DENIED ; 
 scalar_t__ FUNC0 (struct xdr_netobj*,struct xdr_netobj*) ; 
 int FUNC1 (struct rpc_gss_wire_cred*,struct kvec*,int /*<<< orphan*/ *,struct xdr_netobj*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct kvec*,struct xdr_netobj*) ; 

__attribute__((used)) static inline int
FUNC4(struct rpc_gss_wire_cred *gc,
	      struct kvec *argv, __be32 *authp,
	      struct xdr_netobj *in_handle,
	      struct xdr_netobj *in_token)
{
	struct xdr_netobj tmpobj;
	int res;

	res = FUNC1(gc, argv, authp, in_handle);
	if (res)
		return res;

	if (FUNC3(argv, &tmpobj)) {
		FUNC2(in_handle->data);
		return SVC_DENIED;
	}
	if (FUNC0(in_token, &tmpobj)) {
		FUNC2(in_handle->data);
		return SVC_CLOSE;
	}

	return 0;
}