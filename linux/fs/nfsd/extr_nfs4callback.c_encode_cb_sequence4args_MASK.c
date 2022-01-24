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
struct nfsd4_session {int /*<<< orphan*/  se_cb_seq_nr; } ;
struct nfsd4_callback {TYPE_1__* cb_clp; } ;
struct nfs4_cb_compound_hdr {scalar_t__ minorversion; int /*<<< orphan*/  nops; } ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_2__ {struct nfsd4_session* cl_cb_session; } ;

/* Variables and functions */
 int /*<<< orphan*/  OP_CB_SEQUENCE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct xdr_stream*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct xdr_stream*,struct nfsd4_session*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (struct xdr_stream*,int) ; 
 void* xdr_zero ; 

__attribute__((used)) static void FUNC5(struct xdr_stream *xdr,
				    const struct nfsd4_callback *cb,
				    struct nfs4_cb_compound_hdr *hdr)
{
	struct nfsd4_session *session = cb->cb_clp->cl_cb_session;
	__be32 *p;

	if (hdr->minorversion == 0)
		return;

	FUNC1(xdr, OP_CB_SEQUENCE);
	FUNC2(xdr, session);

	p = FUNC4(xdr, 4 + 4 + 4 + 4 + 4);
	*p++ = FUNC0(session->se_cb_seq_nr);	/* csa_sequenceid */
	*p++ = xdr_zero;			/* csa_slotid */
	*p++ = xdr_zero;			/* csa_highest_slotid */
	*p++ = xdr_zero;			/* csa_cachethis */
	FUNC3(p);		/* csa_referring_call_lists */

	hdr->nops++;
}