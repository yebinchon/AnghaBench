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
struct wmfw_adsp1_id_hdr {int /*<<< orphan*/  dm; TYPE_2__ fw; int /*<<< orphan*/  zm; int /*<<< orphan*/  n_algs; } ;
struct TYPE_3__ {int /*<<< orphan*/  id; int /*<<< orphan*/  ver; } ;
struct wmfw_adsp1_alg_hdr {TYPE_1__ alg; int /*<<< orphan*/  zm; int /*<<< orphan*/  dm; } ;
struct wm_adsp_region {int /*<<< orphan*/  base; } ;
struct wm_adsp_alg_region {TYPE_1__ alg; int /*<<< orphan*/  zm; int /*<<< orphan*/  dm; } ;
struct wm_adsp {scalar_t__ fw_ver; int /*<<< orphan*/  regmap; } ;
typedef  int /*<<< orphan*/  adsp1_id ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (struct wmfw_adsp1_alg_hdr*) ; 
 int FUNC1 (struct wmfw_adsp1_alg_hdr*) ; 
 int /*<<< orphan*/  SNDRV_CTL_ELEM_TYPE_BYTES ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  WMFW_ADSP1_DM ; 
 int /*<<< orphan*/  WMFW_ADSP1_ZM ; 
 int /*<<< orphan*/  FUNC3 (struct wm_adsp*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct wm_adsp*,char*,int,unsigned int,int,int,int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct wm_adsp*,char*,unsigned int) ; 
 unsigned int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct wmfw_adsp1_alg_hdr*) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct wmfw_adsp1_id_hdr*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct wm_adsp*,struct wmfw_adsp1_alg_hdr*,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct wmfw_adsp1_alg_hdr* FUNC10 (struct wm_adsp*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct wm_adsp_region* FUNC11 (struct wm_adsp*,int /*<<< orphan*/ ) ; 
 struct wmfw_adsp1_alg_hdr* FUNC12 (struct wm_adsp*,size_t,struct wm_adsp_region const*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC13 (struct wm_adsp*,TYPE_2__*,size_t) ; 

__attribute__((used)) static int FUNC14(struct wm_adsp *dsp)
{
	struct wmfw_adsp1_id_hdr adsp1_id;
	struct wmfw_adsp1_alg_hdr *adsp1_alg;
	struct wm_adsp_alg_region *alg_region;
	const struct wm_adsp_region *mem;
	unsigned int pos, len;
	size_t n_algs;
	int i, ret;

	mem = FUNC11(dsp, WMFW_ADSP1_DM);
	if (FUNC2(!mem))
		return -EINVAL;

	ret = FUNC8(dsp->regmap, mem->base, &adsp1_id,
			      sizeof(adsp1_id));
	if (ret != 0) {
		FUNC3(dsp, "Failed to read algorithm info: %d\n",
			 ret);
		return ret;
	}

	n_algs = FUNC6(adsp1_id.n_algs);

	FUNC13(dsp, &adsp1_id.fw, n_algs);

	alg_region = FUNC10(dsp, WMFW_ADSP1_ZM,
					   adsp1_id.fw.id, adsp1_id.zm);
	if (FUNC0(alg_region))
		return FUNC1(alg_region);

	alg_region = FUNC10(dsp, WMFW_ADSP1_DM,
					   adsp1_id.fw.id, adsp1_id.dm);
	if (FUNC0(alg_region))
		return FUNC1(alg_region);

	/* Calculate offset and length in DSP words */
	pos = sizeof(adsp1_id) / sizeof(u32);
	len = (sizeof(*adsp1_alg) * n_algs) / sizeof(u32);

	adsp1_alg = FUNC12(dsp, n_algs, mem, pos, len);
	if (FUNC0(adsp1_alg))
		return FUNC1(adsp1_alg);

	for (i = 0; i < n_algs; i++) {
		FUNC4(dsp, "%d: ID %x v%d.%d.%d DM@%x ZM@%x\n",
			  i, FUNC6(adsp1_alg[i].alg.id),
			  (FUNC6(adsp1_alg[i].alg.ver) & 0xff0000) >> 16,
			  (FUNC6(adsp1_alg[i].alg.ver) & 0xff00) >> 8,
			  FUNC6(adsp1_alg[i].alg.ver) & 0xff,
			  FUNC6(adsp1_alg[i].dm),
			  FUNC6(adsp1_alg[i].zm));

		alg_region = FUNC10(dsp, WMFW_ADSP1_DM,
						   adsp1_alg[i].alg.id,
						   adsp1_alg[i].dm);
		if (FUNC0(alg_region)) {
			ret = FUNC1(alg_region);
			goto out;
		}
		if (dsp->fw_ver == 0) {
			if (i + 1 < n_algs) {
				len = FUNC6(adsp1_alg[i + 1].dm);
				len -= FUNC6(adsp1_alg[i].dm);
				len *= 4;
				FUNC9(dsp, alg_region, 0,
						     len, NULL, 0, 0,
						     SNDRV_CTL_ELEM_TYPE_BYTES);
			} else {
				FUNC5(dsp, "Missing length info for region DM with ID %x\n",
					  FUNC6(adsp1_alg[i].alg.id));
			}
		}

		alg_region = FUNC10(dsp, WMFW_ADSP1_ZM,
						   adsp1_alg[i].alg.id,
						   adsp1_alg[i].zm);
		if (FUNC0(alg_region)) {
			ret = FUNC1(alg_region);
			goto out;
		}
		if (dsp->fw_ver == 0) {
			if (i + 1 < n_algs) {
				len = FUNC6(adsp1_alg[i + 1].zm);
				len -= FUNC6(adsp1_alg[i].zm);
				len *= 4;
				FUNC9(dsp, alg_region, 0,
						     len, NULL, 0, 0,
						     SNDRV_CTL_ELEM_TYPE_BYTES);
			} else {
				FUNC5(dsp, "Missing length info for region ZM with ID %x\n",
					  FUNC6(adsp1_alg[i].alg.id));
			}
		}
	}

out:
	FUNC7(adsp1_alg);
	return ret;
}