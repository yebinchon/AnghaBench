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
struct nfs42_layoutstat_args {int num_dev; int /*<<< orphan*/ * devinfo; int /*<<< orphan*/  fh; int /*<<< orphan*/  seq_args; } ;
struct compound_hdr {int /*<<< orphan*/  minorversion; } ;

/* Variables and functions */
 int PNFS_LAYOUTSTATS_MAXDEV ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct xdr_stream*,struct rpc_rqst*,struct compound_hdr*) ; 
 int /*<<< orphan*/  FUNC2 (struct xdr_stream*,struct nfs42_layoutstat_args const*,int /*<<< orphan*/ *,struct compound_hdr*) ; 
 int /*<<< orphan*/  FUNC3 (struct compound_hdr*) ; 
 int /*<<< orphan*/  FUNC4 (struct xdr_stream*,int /*<<< orphan*/ ,struct compound_hdr*) ; 
 int /*<<< orphan*/  FUNC5 (struct xdr_stream*,int /*<<< orphan*/ *,struct compound_hdr*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct rpc_rqst *req,
				     struct xdr_stream *xdr,
				     const void *data)
{
	const struct nfs42_layoutstat_args *args = data;
	int i;

	struct compound_hdr hdr = {
		.minorversion = FUNC6(&args->seq_args),
	};

	FUNC1(xdr, req, &hdr);
	FUNC5(xdr, &args->seq_args, &hdr);
	FUNC4(xdr, args->fh, &hdr);
	FUNC0(args->num_dev > PNFS_LAYOUTSTATS_MAXDEV);
	for (i = 0; i < args->num_dev; i++)
		FUNC2(xdr, args, &args->devinfo[i], &hdr);
	FUNC3(&hdr);
}