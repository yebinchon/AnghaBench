#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct xdr_stream {int dummy; } ;
struct TYPE_6__ {scalar_t__ rdma_attrs; scalar_t__ nr_rdma_attrs; scalar_t__ maxreqs; scalar_t__ maxops; scalar_t__ maxresp_cached; scalar_t__ maxresp_sz; scalar_t__ maxreq_sz; } ;
struct TYPE_5__ {scalar_t__ rdma_attrs; scalar_t__ nr_rdma_attrs; scalar_t__ maxreqs; scalar_t__ maxops; scalar_t__ maxresp_cached; scalar_t__ maxresp_sz; scalar_t__ maxreq_sz; } ;
struct TYPE_4__ {int /*<<< orphan*/  data; } ;
struct nfsd4_create_session {TYPE_3__ back_channel; TYPE_2__ fore_channel; scalar_t__ flags; scalar_t__ seqid; TYPE_1__ sessionid; } ;
struct nfsd4_compoundres {struct xdr_stream xdr; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  NFS4_MAX_SESSIONID_LEN ; 
 void* FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  nfserr_resource ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (struct xdr_stream*,int) ; 

__attribute__((used)) static __be32
FUNC3(struct nfsd4_compoundres *resp, __be32 nfserr,
			    struct nfsd4_create_session *sess)
{
	struct xdr_stream *xdr = &resp->xdr;
	__be32 *p;

	p = FUNC2(xdr, 24);
	if (!p)
		return nfserr_resource;
	p = FUNC1(p, sess->sessionid.data,
					NFS4_MAX_SESSIONID_LEN);
	*p++ = FUNC0(sess->seqid);
	*p++ = FUNC0(sess->flags);

	p = FUNC2(xdr, 28);
	if (!p)
		return nfserr_resource;
	*p++ = FUNC0(0); /* headerpadsz */
	*p++ = FUNC0(sess->fore_channel.maxreq_sz);
	*p++ = FUNC0(sess->fore_channel.maxresp_sz);
	*p++ = FUNC0(sess->fore_channel.maxresp_cached);
	*p++ = FUNC0(sess->fore_channel.maxops);
	*p++ = FUNC0(sess->fore_channel.maxreqs);
	*p++ = FUNC0(sess->fore_channel.nr_rdma_attrs);

	if (sess->fore_channel.nr_rdma_attrs) {
		p = FUNC2(xdr, 4);
		if (!p)
			return nfserr_resource;
		*p++ = FUNC0(sess->fore_channel.rdma_attrs);
	}

	p = FUNC2(xdr, 28);
	if (!p)
		return nfserr_resource;
	*p++ = FUNC0(0); /* headerpadsz */
	*p++ = FUNC0(sess->back_channel.maxreq_sz);
	*p++ = FUNC0(sess->back_channel.maxresp_sz);
	*p++ = FUNC0(sess->back_channel.maxresp_cached);
	*p++ = FUNC0(sess->back_channel.maxops);
	*p++ = FUNC0(sess->back_channel.maxreqs);
	*p++ = FUNC0(sess->back_channel.nr_rdma_attrs);

	if (sess->back_channel.nr_rdma_attrs) {
		p = FUNC2(xdr, 4);
		if (!p)
			return nfserr_resource;
		*p++ = FUNC0(sess->back_channel.rdma_attrs);
	}
	return 0;
}