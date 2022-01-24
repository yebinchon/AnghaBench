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
typedef  int /*<<< orphan*/  u64 ;
typedef  scalar_t__ u32 ;
struct svc_rqst {int /*<<< orphan*/ ** rq_pages; } ;
struct svc_rdma_read_info {scalar_t__ ri_position; TYPE_1__* ri_readctxt; scalar_t__ ri_chunklen; } ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_2__ {unsigned int rc_page_count; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct svc_rdma_read_info*,struct svc_rqst*,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ xdr_zero ; 

__attribute__((used)) static int FUNC4(struct svc_rqst *rqstp,
				     struct svc_rdma_read_info *info,
				     __be32 *p)
{
	unsigned int i;
	int ret;

	ret = -EINVAL;
	info->ri_chunklen = 0;
	while (*p++ != xdr_zero && FUNC0(p++) == info->ri_position) {
		u32 rs_handle, rs_length;
		u64 rs_offset;

		rs_handle = FUNC0(p++);
		rs_length = FUNC0(p++);
		p = FUNC3(p, &rs_offset);

		ret = FUNC1(info, rqstp,
						  rs_handle, rs_length,
						  rs_offset);
		if (ret < 0)
			break;

		FUNC2(rs_handle, rs_length, rs_offset);
		info->ri_chunklen += rs_length;
	}

	/* Pages under I/O have been copied to head->rc_pages.
	 * Prevent their premature release by svc_xprt_release() .
	 */
	for (i = 0; i < info->ri_readctxt->rc_page_count; i++)
		rqstp->rq_pages[i] = NULL;

	return ret;
}