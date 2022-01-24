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
struct TYPE_2__ {int ri_max_segs; } ;
struct rpcrdma_buffer {int /*<<< orphan*/  rb_lock; int /*<<< orphan*/  rb_allreqs; } ;
struct rpcrdma_xprt {TYPE_1__ rx_ia; struct rpcrdma_buffer rx_buf; } ;
struct rpcrdma_req {struct rpcrdma_req* rl_rdmabuf; struct rpcrdma_req* rl_sendbuf; int /*<<< orphan*/  rl_all; int /*<<< orphan*/  rl_registered; int /*<<< orphan*/  rl_free_mrs; void* rl_recvbuf; int /*<<< orphan*/  rl_hdrbuf; } ;
struct rpcrdma_regbuf {struct rpcrdma_regbuf* rl_rdmabuf; struct rpcrdma_regbuf* rl_sendbuf; int /*<<< orphan*/  rl_all; int /*<<< orphan*/  rl_registered; int /*<<< orphan*/  rl_free_mrs; void* rl_recvbuf; int /*<<< orphan*/  rl_hdrbuf; } ;
typedef  int /*<<< orphan*/  gfp_t ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_NONE ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 size_t FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct rpcrdma_req*) ; 
 struct rpcrdma_req* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct rpcrdma_req*) ; 
 int /*<<< orphan*/  FUNC6 (struct rpcrdma_req*) ; 
 int rpcrdma_fixed_maxsz ; 
 int rpcrdma_readchunk_maxsz ; 
 void* FUNC7 (size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

struct rpcrdma_req *FUNC11(struct rpcrdma_xprt *r_xprt, size_t size,
				       gfp_t flags)
{
	struct rpcrdma_buffer *buffer = &r_xprt->rx_buf;
	struct rpcrdma_regbuf *rb;
	struct rpcrdma_req *req;
	size_t maxhdrsize;

	req = FUNC3(sizeof(*req), flags);
	if (req == NULL)
		goto out1;

	/* Compute maximum header buffer size in bytes */
	maxhdrsize = rpcrdma_fixed_maxsz + 3 +
		     r_xprt->rx_ia.ri_max_segs * rpcrdma_readchunk_maxsz;
	maxhdrsize *= sizeof(__be32);
	rb = FUNC7(FUNC1(maxhdrsize),
				  DMA_TO_DEVICE, flags);
	if (!rb)
		goto out2;
	req->rl_rdmabuf = rb;
	FUNC10(&req->rl_hdrbuf, FUNC5(rb), FUNC6(rb));

	req->rl_sendbuf = FUNC7(size, DMA_TO_DEVICE, flags);
	if (!req->rl_sendbuf)
		goto out3;

	req->rl_recvbuf = FUNC7(size, DMA_NONE, flags);
	if (!req->rl_recvbuf)
		goto out4;

	FUNC0(&req->rl_free_mrs);
	FUNC0(&req->rl_registered);
	FUNC8(&buffer->rb_lock);
	FUNC4(&req->rl_all, &buffer->rb_allreqs);
	FUNC9(&buffer->rb_lock);
	return req;

out4:
	FUNC2(req->rl_sendbuf);
out3:
	FUNC2(req->rl_rdmabuf);
out2:
	FUNC2(req);
out1:
	return NULL;
}