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
struct xdr_buf {TYPE_1__* tail; scalar_t__ page_len; TYPE_1__* head; } ;
struct svcxprt_rdma {int dummy; } ;
struct svc_rdma_write_info {int /*<<< orphan*/  wi_cc; } ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_2__ {int iov_len; } ;

/* Variables and functions */
 int ENOMEM ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct svc_rdma_write_info*,TYPE_1__*) ; 
 int FUNC2 (struct svc_rdma_write_info*,struct xdr_buf*) ; 
 struct svc_rdma_write_info* FUNC3 (struct svcxprt_rdma*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct svc_rdma_write_info*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

int FUNC6(struct svcxprt_rdma *rdma, __be32 *rp_ch,
			      bool writelist, struct xdr_buf *xdr)
{
	struct svc_rdma_write_info *info;
	int consumed, ret;

	info = FUNC3(rdma, rp_ch);
	if (!info)
		return -ENOMEM;

	ret = FUNC1(info, &xdr->head[0]);
	if (ret < 0)
		goto out_err;
	consumed = xdr->head[0].iov_len;

	/* Send the page list in the Reply chunk only if the
	 * client did not provide Write chunks.
	 */
	if (!writelist && xdr->page_len) {
		ret = FUNC2(info, xdr);
		if (ret < 0)
			goto out_err;
		consumed += xdr->page_len;
	}

	if (xdr->tail[0].iov_len) {
		ret = FUNC1(info, &xdr->tail[0]);
		if (ret < 0)
			goto out_err;
		consumed += xdr->tail[0].iov_len;
	}

	ret = FUNC0(&info->wi_cc);
	if (ret < 0)
		goto out_err;

	FUNC5(consumed);
	return consumed;

out_err:
	FUNC4(info);
	return ret;
}