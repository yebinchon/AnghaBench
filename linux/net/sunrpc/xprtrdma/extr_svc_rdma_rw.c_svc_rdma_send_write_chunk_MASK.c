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
struct xdr_buf {int page_len; } ;
struct svcxprt_rdma {int dummy; } ;
struct svc_rdma_write_info {int /*<<< orphan*/  wi_cc; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int ENOMEM ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct svc_rdma_write_info*,struct xdr_buf*) ; 
 struct svc_rdma_write_info* FUNC2 (struct svcxprt_rdma*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct svc_rdma_write_info*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

int FUNC5(struct svcxprt_rdma *rdma, __be32 *wr_ch,
			      struct xdr_buf *xdr)
{
	struct svc_rdma_write_info *info;
	int ret;

	if (!xdr->page_len)
		return 0;

	info = FUNC2(rdma, wr_ch);
	if (!info)
		return -ENOMEM;

	ret = FUNC1(info, xdr);
	if (ret < 0)
		goto out_err;

	ret = FUNC0(&info->wi_cc);
	if (ret < 0)
		goto out_err;

	FUNC4(xdr->page_len);
	return xdr->page_len;

out_err:
	FUNC3(info);
	return ret;
}