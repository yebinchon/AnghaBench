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
typedef  scalar_t__ uint32_t ;
struct xdr_stream {int dummy; } ;
struct rpc_rqst {int dummy; } ;
struct page {int dummy; } ;
struct nfs4_fs_locations_arg {int /*<<< orphan*/  page; int /*<<< orphan*/  bitmask; int /*<<< orphan*/  name; int /*<<< orphan*/  dir_fh; int /*<<< orphan*/  clientid; scalar_t__ renew; int /*<<< orphan*/  fh; scalar_t__ migration; int /*<<< orphan*/  seq_args; } ;
struct compound_hdr {scalar_t__ replen; int /*<<< orphan*/  minorversion; } ;

/* Variables and functions */
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct xdr_stream*,struct rpc_rqst*,struct compound_hdr*) ; 
 int /*<<< orphan*/  FUNC1 (struct xdr_stream*,int /*<<< orphan*/ ,struct compound_hdr*) ; 
 int /*<<< orphan*/  FUNC2 (struct xdr_stream*,int /*<<< orphan*/ ,struct compound_hdr*) ; 
 int /*<<< orphan*/  FUNC3 (struct compound_hdr*) ; 
 int /*<<< orphan*/  FUNC4 (struct xdr_stream*,int /*<<< orphan*/ ,struct compound_hdr*) ; 
 int /*<<< orphan*/  FUNC5 (struct xdr_stream*,int /*<<< orphan*/ ,struct compound_hdr*) ; 
 int /*<<< orphan*/  FUNC6 (struct xdr_stream*,int /*<<< orphan*/ *,struct compound_hdr*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct rpc_rqst*,struct page**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC9(struct rpc_rqst *req,
				      struct xdr_stream *xdr,
				      const void *data)
{
	const struct nfs4_fs_locations_arg *args = data;
	struct compound_hdr hdr = {
		.minorversion = FUNC7(&args->seq_args),
	};
	uint32_t replen;

	FUNC0(xdr, req, &hdr);
	FUNC6(xdr, &args->seq_args, &hdr);
	if (args->migration) {
		FUNC4(xdr, args->fh, &hdr);
		replen = hdr.replen;
		FUNC1(xdr, args->bitmask, &hdr);
		if (args->renew)
			FUNC5(xdr, args->clientid, &hdr);
	} else {
		FUNC4(xdr, args->dir_fh, &hdr);
		FUNC2(xdr, args->name, &hdr);
		replen = hdr.replen;
		FUNC1(xdr, args->bitmask, &hdr);
	}

	FUNC8(req, (struct page **)&args->page, 0,
				PAGE_SIZE, replen + 1);
	FUNC3(&hdr);
}