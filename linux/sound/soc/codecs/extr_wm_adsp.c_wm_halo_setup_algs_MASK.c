#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_4__ {int /*<<< orphan*/  id; } ;
struct wmfw_halo_id_hdr {int /*<<< orphan*/  ym_base; int /*<<< orphan*/  xm_base; TYPE_2__ fw; int /*<<< orphan*/  n_algs; } ;
struct TYPE_3__ {int /*<<< orphan*/  id; int /*<<< orphan*/  ver; } ;
struct wmfw_halo_alg_hdr {int /*<<< orphan*/  ym_base; int /*<<< orphan*/  xm_base; TYPE_1__ alg; } ;
struct wm_adsp_region {int /*<<< orphan*/  base; } ;
struct wm_adsp {int /*<<< orphan*/  regmap; } ;
typedef  int /*<<< orphan*/  halo_id ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (struct wmfw_halo_alg_hdr*) ; 
 int FUNC1 (struct wmfw_halo_alg_hdr*) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  WMFW_ADSP2_XM ; 
 int /*<<< orphan*/  FUNC3 (struct wm_adsp*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct wm_adsp*,char*,int,int,int,int,int,int,int) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct wmfw_halo_alg_hdr*) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct wmfw_halo_id_hdr*,int) ; 
 struct wm_adsp_region* FUNC8 (struct wm_adsp*,int /*<<< orphan*/ ) ; 
 struct wmfw_halo_alg_hdr* FUNC9 (struct wm_adsp*,size_t,struct wm_adsp_region const*,unsigned int,unsigned int) ; 
 int FUNC10 (struct wm_adsp*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct wm_adsp*,TYPE_2__*,size_t) ; 

__attribute__((used)) static int FUNC12(struct wm_adsp *dsp)
{
	struct wmfw_halo_id_hdr halo_id;
	struct wmfw_halo_alg_hdr *halo_alg;
	const struct wm_adsp_region *mem;
	unsigned int pos, len;
	size_t n_algs;
	int i, ret;

	mem = FUNC8(dsp, WMFW_ADSP2_XM);
	if (FUNC2(!mem))
		return -EINVAL;

	ret = FUNC7(dsp->regmap, mem->base, &halo_id,
			      sizeof(halo_id));
	if (ret != 0) {
		FUNC3(dsp, "Failed to read algorithm info: %d\n",
			 ret);
		return ret;
	}

	n_algs = FUNC5(halo_id.n_algs);

	FUNC11(dsp, &halo_id.fw, n_algs);

	ret = FUNC10(dsp, halo_id.fw.id,
				     halo_id.xm_base, halo_id.ym_base);
	if (ret)
		return ret;

	/* Calculate offset and length in DSP words */
	pos = sizeof(halo_id) / sizeof(u32);
	len = (sizeof(*halo_alg) * n_algs) / sizeof(u32);

	halo_alg = FUNC9(dsp, n_algs, mem, pos, len);
	if (FUNC0(halo_alg))
		return FUNC1(halo_alg);

	for (i = 0; i < n_algs; i++) {
		FUNC4(dsp,
			  "%d: ID %x v%d.%d.%d XM@%x YM@%x\n",
			  i, FUNC5(halo_alg[i].alg.id),
			  (FUNC5(halo_alg[i].alg.ver) & 0xff0000) >> 16,
			  (FUNC5(halo_alg[i].alg.ver) & 0xff00) >> 8,
			  FUNC5(halo_alg[i].alg.ver) & 0xff,
			  FUNC5(halo_alg[i].xm_base),
			  FUNC5(halo_alg[i].ym_base));

		ret = FUNC10(dsp, halo_alg[i].alg.id,
					     halo_alg[i].xm_base,
					     halo_alg[i].ym_base);
		if (ret)
			goto out;
	}

out:
	FUNC6(halo_alg);
	return ret;
}