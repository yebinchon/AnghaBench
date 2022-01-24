#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct xdr_stream {int dummy; } ;
struct nfsd4_callback {scalar_t__ cb_seq_status; TYPE_1__* cb_clp; } ;
struct TYPE_2__ {scalar_t__ cl_minorversion; } ;

/* Variables and functions */
 int /*<<< orphan*/  OP_CB_SEQUENCE ; 
 int FUNC0 (struct xdr_stream*,int /*<<< orphan*/ ,scalar_t__*) ; 
 int FUNC1 (struct xdr_stream*,struct nfsd4_callback*) ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(struct xdr_stream *xdr,
				  struct nfsd4_callback *cb)
{
	int status;

	if (cb->cb_clp->cl_minorversion == 0)
		return 0;

	status = FUNC0(xdr, OP_CB_SEQUENCE, &cb->cb_seq_status);
	if (FUNC2(status || cb->cb_seq_status))
		return status;

	return FUNC1(xdr, cb);
}