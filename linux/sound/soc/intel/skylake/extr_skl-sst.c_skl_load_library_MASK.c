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
struct sst_dsp {struct skl_dev* thread_context; } ;
struct skl_lib_info {int dummy; } ;
struct skl_dev {int /*<<< orphan*/ * lib_info; } ;
struct firmware {int /*<<< orphan*/  size; int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int /*<<< orphan*/  SKL_ADSP_FW_BIN_HDR_OFFSET ; 
 int FUNC0 (struct skl_dev*,int /*<<< orphan*/ *,struct firmware*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct skl_lib_info*,int) ; 
 int FUNC2 (struct sst_dsp*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int
FUNC3(struct sst_dsp *ctx, struct skl_lib_info *linfo, int lib_count)
{
	struct skl_dev *skl = ctx->thread_context;
	struct firmware stripped_fw;
	int ret, i;

	/* library indices start from 1 to N. 0 represents base FW */
	for (i = 1; i < lib_count; i++) {
		ret = FUNC0(skl, &skl->lib_info[i], &stripped_fw,
					SKL_ADSP_FW_BIN_HDR_OFFSET, i);
		if (ret < 0)
			goto load_library_failed;
		ret = FUNC2(ctx, stripped_fw.data,
				stripped_fw.size, 0, i, false);
		if (ret < 0)
			goto load_library_failed;
	}

	return 0;

load_library_failed:
	FUNC1(linfo, lib_count);
	return ret;
}