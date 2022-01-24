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
struct nfs4_getattr_arg {int /*<<< orphan*/  bitmask; int /*<<< orphan*/  fh; int /*<<< orphan*/  seq_args; } ;
struct compound_hdr {int /*<<< orphan*/  minorversion; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct xdr_stream*,struct rpc_rqst*,struct compound_hdr*) ; 
 int /*<<< orphan*/  FUNC1 (struct xdr_stream*,int /*<<< orphan*/ ,struct compound_hdr*) ; 
 int /*<<< orphan*/  FUNC2 (struct compound_hdr*) ; 
 int /*<<< orphan*/  FUNC3 (struct xdr_stream*,int /*<<< orphan*/ ,struct compound_hdr*) ; 
 int /*<<< orphan*/  FUNC4 (struct xdr_stream*,int /*<<< orphan*/ *,struct compound_hdr*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct rpc_rqst *req, struct xdr_stream *xdr,
				 const void *data)
{
	const struct nfs4_getattr_arg *args = data;
	struct compound_hdr hdr = {
		.minorversion = FUNC5(&args->seq_args),
	};

	FUNC0(xdr, req, &hdr);
	FUNC4(xdr, &args->seq_args, &hdr);
	FUNC3(xdr, args->fh, &hdr);
	FUNC1(xdr, args->bitmask, &hdr);
	FUNC2(&hdr);
}