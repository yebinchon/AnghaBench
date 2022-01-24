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
struct nfsd4_callback {int /*<<< orphan*/  cb_status; scalar_t__ cb_seq_status; } ;
struct nfs4_cb_compound_hdr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  OP_CB_OFFLOAD ; 
 int FUNC0 (struct xdr_stream*,struct nfs4_cb_compound_hdr*) ; 
 int FUNC1 (struct xdr_stream*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct xdr_stream*,struct nfsd4_callback*) ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(struct rpc_rqst *rqstp,
				   struct xdr_stream *xdr,
				   void *data)
{
	struct nfsd4_callback *cb = data;
	struct nfs4_cb_compound_hdr hdr;
	int status;

	status = FUNC0(xdr, &hdr);
	if (FUNC3(status))
		return status;

	status = FUNC2(xdr, cb);
	if (FUNC3(status || cb->cb_seq_status))
		return status;

	return FUNC1(xdr, OP_CB_OFFLOAD, &cb->cb_status);
}