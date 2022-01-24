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
struct nfs_getaclargs {int /*<<< orphan*/  acl_len; int /*<<< orphan*/  acl_pages; int /*<<< orphan*/  fh; int /*<<< orphan*/  seq_args; } ;
struct compound_hdr {scalar_t__ replen; int /*<<< orphan*/  minorversion; } ;
typedef  int /*<<< orphan*/  __u32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  const FATTR4_WORD0_ACL ; 
 int /*<<< orphan*/  FUNC1 (struct xdr_stream*,struct rpc_rqst*,struct compound_hdr*) ; 
 int /*<<< orphan*/  FUNC2 (struct xdr_stream*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct compound_hdr*) ; 
 int /*<<< orphan*/  FUNC3 (struct compound_hdr*) ; 
 int /*<<< orphan*/  FUNC4 (struct xdr_stream*,int /*<<< orphan*/ ,struct compound_hdr*) ; 
 int /*<<< orphan*/  FUNC5 (struct xdr_stream*,int /*<<< orphan*/ *,struct compound_hdr*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ op_decode_hdr_maxsz ; 
 int /*<<< orphan*/  FUNC7 (struct rpc_rqst*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC8(struct rpc_rqst *req, struct xdr_stream *xdr,
				const void *data)
{
	const struct nfs_getaclargs *args = data;
	struct compound_hdr hdr = {
		.minorversion = FUNC6(&args->seq_args),
	};
	const __u32 nfs4_acl_bitmap[1] = {
		[0] = FATTR4_WORD0_ACL,
	};
	uint32_t replen;

	FUNC1(xdr, req, &hdr);
	FUNC5(xdr, &args->seq_args, &hdr);
	FUNC4(xdr, args->fh, &hdr);
	replen = hdr.replen + op_decode_hdr_maxsz;
	FUNC2(xdr, nfs4_acl_bitmap, NULL,
			FUNC0(nfs4_acl_bitmap), &hdr);

	FUNC7(req, args->acl_pages, 0,
				args->acl_len, replen + 1);
	FUNC3(&hdr);
}