#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct scatterlist {int dummy; } ;
struct mmpin {int dummy; } ;
struct TYPE_7__ {struct mmpin z_mmp; } ;
struct rds_msg_zcopy_info {TYPE_3__ znotif; int /*<<< orphan*/  rs_zcookie_next; } ;
struct TYPE_8__ {int op_nents; TYPE_3__* op_mmp_znotifier; struct scatterlist* op_sg; } ;
struct TYPE_5__ {int /*<<< orphan*/  h_len; } ;
struct TYPE_6__ {TYPE_1__ i_hdr; } ;
struct rds_message {TYPE_4__ data; TYPE_2__ m_inc; } ;
struct page {int dummy; } ;
struct iov_iter {int dummy; } ;
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
 int EFAULT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct iov_iter*,scalar_t__) ; 
 int FUNC4 (struct iov_iter*) ; 
 scalar_t__ FUNC5 (struct iov_iter*,struct page**,int /*<<< orphan*/ ,int,size_t*) ; 
 int /*<<< orphan*/  FUNC6 (struct rds_msg_zcopy_info*) ; 
 struct rds_msg_zcopy_info* FUNC7 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct mmpin*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct mmpin*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct scatterlist*) ; 
 int /*<<< orphan*/  FUNC12 (struct scatterlist*,struct page*,scalar_t__,size_t) ; 

__attribute__((used)) static int FUNC13(struct rds_message *rm, struct iov_iter *from)
{
	struct scatterlist *sg;
	int ret = 0;
	int length = FUNC4(from);
	int total_copied = 0;
	struct rds_msg_zcopy_info *info;

	rm->m_inc.i_hdr.h_len = FUNC2(FUNC4(from));

	/*
	 * now allocate and copy in the data payload.
	 */
	sg = rm->data.op_sg;

	info = FUNC7(sizeof(*info), GFP_KERNEL);
	if (!info)
		return -ENOMEM;
	FUNC0(&info->rs_zcookie_next);
	rm->data.op_mmp_znotifier = &info->znotif;
	if (FUNC8(&rm->data.op_mmp_znotifier->z_mmp,
				    length)) {
		ret = -ENOMEM;
		goto err;
	}
	while (FUNC4(from)) {
		struct page *pages;
		size_t start;
		ssize_t copied;

		copied = FUNC5(from, &pages, PAGE_SIZE,
					    1, &start);
		if (copied < 0) {
			struct mmpin *mmp;
			int i;

			for (i = 0; i < rm->data.op_nents; i++)
				FUNC10(FUNC11(&rm->data.op_sg[i]));
			mmp = &rm->data.op_mmp_znotifier->z_mmp;
			FUNC9(mmp);
			ret = -EFAULT;
			goto err;
		}
		total_copied += copied;
		FUNC3(from, copied);
		length -= copied;
		FUNC12(sg, pages, copied, start);
		rm->data.op_nents++;
		sg++;
	}
	FUNC1(length != 0);
	return ret;
err:
	FUNC6(info);
	rm->data.op_mmp_znotifier = NULL;
	return ret;
}