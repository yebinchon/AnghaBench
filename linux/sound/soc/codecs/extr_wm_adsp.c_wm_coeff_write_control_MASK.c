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
struct wm_coeff_ctl {struct wm_adsp* dsp; } ;
struct wm_adsp {int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int ENOMEM ; 
 int GFP_DMA ; 
 int GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct wm_adsp*,char*,size_t,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct wm_adsp*,char*,size_t,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 void* FUNC3 (void const*,size_t,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,unsigned int,void*,size_t) ; 
 int FUNC5 (struct wm_coeff_ctl*,unsigned int*) ; 

__attribute__((used)) static int FUNC6(struct wm_coeff_ctl *ctl,
				  const void *buf, size_t len)
{
	struct wm_adsp *dsp = ctl->dsp;
	void *scratch;
	int ret;
	unsigned int reg;

	ret = FUNC5(ctl, &reg);
	if (ret)
		return ret;

	scratch = FUNC3(buf, len, GFP_KERNEL | GFP_DMA);
	if (!scratch)
		return -ENOMEM;

	ret = FUNC4(dsp->regmap, reg, scratch,
			       len);
	if (ret) {
		FUNC1(dsp, "Failed to write %zu bytes to %x: %d\n",
			 len, reg, ret);
		FUNC2(scratch);
		return ret;
	}
	FUNC0(dsp, "Wrote %zu bytes to %x\n", len, reg);

	FUNC2(scratch);

	return 0;
}