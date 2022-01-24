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
struct xdr_buf {TYPE_2__* tail; int /*<<< orphan*/  page_len; TYPE_1__* head; int /*<<< orphan*/  len; } ;
struct svc_xprt {int /*<<< orphan*/  xpt_mutex; TYPE_3__* xpt_ops; int /*<<< orphan*/  xpt_flags; } ;
struct svc_rqst {struct xdr_buf rq_res; struct svc_xprt* rq_xprt; } ;
struct TYPE_6__ {int (* xpo_sendto ) (struct svc_rqst*) ;int /*<<< orphan*/  (* xpo_release_rqst ) (struct svc_rqst*) ;} ;
struct TYPE_5__ {int /*<<< orphan*/  iov_len; } ;
struct TYPE_4__ {int /*<<< orphan*/  iov_len; } ;

/* Variables and functions */
 int EAGAIN ; 
 int ECONNREFUSED ; 
 int EFAULT ; 
 int ENOTCONN ; 
 int /*<<< orphan*/  XPT_CLOSE ; 
 int /*<<< orphan*/  XPT_DEAD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct svc_rqst*) ; 
 int FUNC3 (struct svc_rqst*) ; 
 int /*<<< orphan*/  FUNC4 (struct svc_rqst*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct svc_rqst*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct svc_rqst*) ; 

int FUNC8(struct svc_rqst *rqstp)
{
	struct svc_xprt	*xprt;
	int		len = -EFAULT;
	struct xdr_buf	*xb;

	xprt = rqstp->rq_xprt;
	if (!xprt)
		goto out;

	/* release the receive skb before sending the reply */
	xprt->xpt_ops->xpo_release_rqst(rqstp);

	/* calculate over-all length */
	xb = &rqstp->rq_res;
	xb->len = xb->head[0].iov_len +
		xb->page_len +
		xb->tail[0].iov_len;

	/* Grab mutex to serialize outgoing data. */
	FUNC0(&xprt->xpt_mutex);
	FUNC7(rqstp);
	if (FUNC5(XPT_DEAD, &xprt->xpt_flags)
			|| FUNC5(XPT_CLOSE, &xprt->xpt_flags))
		len = -ENOTCONN;
	else
		len = xprt->xpt_ops->xpo_sendto(rqstp);
	FUNC1(&xprt->xpt_mutex);
	FUNC6(rqstp, len);
	FUNC4(rqstp);

	if (len == -ECONNREFUSED || len == -ENOTCONN || len == -EAGAIN)
		len = 0;
out:
	return len;
}