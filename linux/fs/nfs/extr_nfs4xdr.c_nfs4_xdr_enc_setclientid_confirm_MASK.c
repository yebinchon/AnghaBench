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
struct xdr_stream {int dummy; } ;
struct rpc_rqst {int dummy; } ;
struct nfs4_setclientid_res {int dummy; } ;
struct compound_hdr {int /*<<< orphan*/  nops; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct xdr_stream*,struct rpc_rqst*,struct compound_hdr*) ; 
 int /*<<< orphan*/  FUNC1 (struct compound_hdr*) ; 
 int /*<<< orphan*/  FUNC2 (struct xdr_stream*,struct nfs4_setclientid_res const*,struct compound_hdr*) ; 

__attribute__((used)) static void FUNC3(struct rpc_rqst *req,
					     struct xdr_stream *xdr,
					     const void *data)
{
	const struct nfs4_setclientid_res *arg = data;
	struct compound_hdr hdr = {
		.nops	= 0,
	};

	FUNC0(xdr, req, &hdr);
	FUNC2(xdr, arg, &hdr);
	FUNC1(&hdr);
}