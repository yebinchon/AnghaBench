#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct xdr_stream {int dummy; } ;
struct rpc_rqst {int dummy; } ;
struct nfs_openargs {TYPE_2__* lg_args; int /*<<< orphan*/  open_bitmap; int /*<<< orphan*/  bitmask; scalar_t__ access; int /*<<< orphan*/  fh; int /*<<< orphan*/  seq_args; } ;
struct compound_hdr {int /*<<< orphan*/  replen; int /*<<< orphan*/  minorversion; } ;
struct TYPE_3__ {int /*<<< orphan*/  pglen; int /*<<< orphan*/  pages; } ;
struct TYPE_4__ {TYPE_1__ layout; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct xdr_stream*,scalar_t__,struct compound_hdr*) ; 
 int /*<<< orphan*/  FUNC1 (struct xdr_stream*,struct rpc_rqst*,struct compound_hdr*) ; 
 int /*<<< orphan*/  FUNC2 (struct xdr_stream*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct compound_hdr*) ; 
 int /*<<< orphan*/  FUNC3 (struct xdr_stream*,struct compound_hdr*) ; 
 int /*<<< orphan*/  FUNC4 (struct xdr_stream*,TYPE_2__*,struct compound_hdr*) ; 
 int /*<<< orphan*/  FUNC5 (struct compound_hdr*) ; 
 int /*<<< orphan*/  FUNC6 (struct xdr_stream*,struct nfs_openargs const*,struct compound_hdr*) ; 
 int /*<<< orphan*/  FUNC7 (struct xdr_stream*,int /*<<< orphan*/ ,struct compound_hdr*) ; 
 int /*<<< orphan*/  FUNC8 (struct xdr_stream*,int /*<<< orphan*/ *,struct compound_hdr*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct rpc_rqst*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC11(struct rpc_rqst *req, struct xdr_stream *xdr,
			      const void *data)
{
	const struct nfs_openargs *args = data;
	struct compound_hdr hdr = {
		.minorversion = FUNC9(&args->seq_args),
	};

	FUNC1(xdr, req, &hdr);
	FUNC8(xdr, &args->seq_args, &hdr);
	FUNC7(xdr, args->fh, &hdr);
	FUNC6(xdr, args, &hdr);
	FUNC3(xdr, &hdr);
	if (args->access)
		FUNC0(xdr, args->access, &hdr);
	FUNC2(xdr, args->bitmask, args->open_bitmap, &hdr);
	if (args->lg_args) {
		FUNC4(xdr, args->lg_args, &hdr);
		FUNC10(req, args->lg_args->layout.pages, 0,
					args->lg_args->layout.pglen,
					hdr.replen);
	}
	FUNC5(&hdr);
}