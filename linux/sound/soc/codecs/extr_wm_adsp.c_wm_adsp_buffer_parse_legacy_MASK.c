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
typedef  scalar_t__ u32 ;
struct wm_adsp_compr_buf {scalar_t__ host_buf_ptr; int /*<<< orphan*/  host_buf_mem_type; } ;
struct wm_adsp_alg_region {scalar_t__ base; } ;
struct wm_adsp {TYPE_1__* ops; int /*<<< orphan*/  fw_id; } ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_2__ {int sys_config_size; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int EINVAL ; 
 int EIO ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  WMFW_ADSP2_XM ; 
 scalar_t__ WM_ADSP_ALG_XM_STRUCT_MAGIC ; 
 int /*<<< orphan*/  FUNC1 (struct wm_adsp*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct wm_adsp_compr_buf*,char*,scalar_t__) ; 
 scalar_t__ host_buf_ptr ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 struct wm_adsp_compr_buf* FUNC4 (struct wm_adsp*) ; 
 int FUNC5 (struct wm_adsp_compr_buf*) ; 
 struct wm_adsp_alg_region* FUNC6 (struct wm_adsp*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct wm_adsp*,int /*<<< orphan*/ ,scalar_t__,scalar_t__*) ; 

__attribute__((used)) static int FUNC8(struct wm_adsp *dsp)
{
	struct wm_adsp_alg_region *alg_region;
	struct wm_adsp_compr_buf *buf;
	u32 xmalg, addr, magic;
	int i, ret;

	alg_region = FUNC6(dsp, WMFW_ADSP2_XM, dsp->fw_id);
	if (!alg_region) {
		FUNC1(dsp, "No algorithm region found\n");
		return -EINVAL;
	}

	buf = FUNC4(dsp);
	if (!buf)
		return -ENOMEM;

	xmalg = dsp->ops->sys_config_size / sizeof(__be32);

	addr = alg_region->base + xmalg + FUNC0(magic);
	ret = FUNC7(dsp, WMFW_ADSP2_XM, addr, &magic);
	if (ret < 0)
		return ret;

	if (magic != WM_ADSP_ALG_XM_STRUCT_MAGIC)
		return -ENODEV;

	addr = alg_region->base + xmalg + FUNC0(host_buf_ptr);
	for (i = 0; i < 5; ++i) {
		ret = FUNC7(dsp, WMFW_ADSP2_XM, addr,
					     &buf->host_buf_ptr);
		if (ret < 0)
			return ret;

		if (buf->host_buf_ptr)
			break;

		FUNC3(1000, 2000);
	}

	if (!buf->host_buf_ptr)
		return -EIO;

	buf->host_buf_mem_type = WMFW_ADSP2_XM;

	ret = FUNC5(buf);
	if (ret < 0)
		return ret;

	FUNC2(buf, "legacy host_buf_ptr=%x\n", buf->host_buf_ptr);

	return 0;
}