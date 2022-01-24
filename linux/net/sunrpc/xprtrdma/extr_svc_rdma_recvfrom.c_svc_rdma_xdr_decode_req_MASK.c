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
struct xdr_buf {scalar_t__ len; TYPE_1__* head; } ;
typedef  scalar_t__ __be32 ;
struct TYPE_2__ {scalar_t__* iov_base; unsigned int iov_len; } ;

/* Variables and functions */
 int EINVAL ; 
 int EPROTONOSUPPORT ; 
 scalar_t__ RPCRDMA_HDRLEN_ERR ; 
#define  rdma_done 131 
#define  rdma_error 130 
#define  rdma_msg 129 
#define  rdma_nomsg 128 
 scalar_t__ rpcrdma_version ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 scalar_t__* FUNC6 (scalar_t__*,scalar_t__*) ; 
 scalar_t__* FUNC7 (scalar_t__*,scalar_t__*) ; 
 scalar_t__* FUNC8 (scalar_t__*,scalar_t__*) ; 

__attribute__((used)) static int FUNC9(struct xdr_buf *rq_arg)
{
	__be32 *p, *end, *rdma_argp;
	unsigned int hdr_len;

	/* Verify that there's enough bytes for header + something */
	if (rq_arg->len <= RPCRDMA_HDRLEN_ERR)
		goto out_short;

	rdma_argp = rq_arg->head[0].iov_base;
	if (*(rdma_argp + 1) != rpcrdma_version)
		goto out_version;

	switch (*(rdma_argp + 3)) {
	case rdma_msg:
		break;
	case rdma_nomsg:
		break;

	case rdma_done:
		goto out_drop;

	case rdma_error:
		goto out_drop;

	default:
		goto out_proc;
	}

	end = (__be32 *)((unsigned long)rdma_argp + rq_arg->len);
	p = FUNC6(rdma_argp + 4, end);
	if (!p)
		goto out_inval;
	p = FUNC8(p, end);
	if (!p)
		goto out_inval;
	p = FUNC7(p, end);
	if (!p)
		goto out_inval;
	if (p > end)
		goto out_inval;

	rq_arg->head[0].iov_base = p;
	hdr_len = (unsigned long)p - (unsigned long)rdma_argp;
	rq_arg->head[0].iov_len -= hdr_len;
	rq_arg->len -= hdr_len;
	FUNC4(rdma_argp, hdr_len);
	return hdr_len;

out_short:
	FUNC5(rq_arg->len);
	return -EINVAL;

out_version:
	FUNC1(rdma_argp);
	return -EPROTONOSUPPORT;

out_drop:
	FUNC2(rdma_argp);
	return 0;

out_proc:
	FUNC0(rdma_argp);
	return -EINVAL;

out_inval:
	FUNC3(rdma_argp);
	return -EINVAL;
}