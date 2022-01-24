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
 void* FUNC3 (size_t,int) ; 
 int /*<<< orphan*/  FUNC4 (void*,void*,size_t) ; 
 int FUNC5 (int /*<<< orphan*/ ,unsigned int,void*,size_t) ; 
 int FUNC6 (struct wm_coeff_ctl*,unsigned int*) ; 

__attribute__((used)) static int FUNC7(struct wm_coeff_ctl *ctl,
				 void *buf, size_t len)
{
	struct wm_adsp *dsp = ctl->dsp;
	void *scratch;
	int ret;
	unsigned int reg;

	ret = FUNC6(ctl, &reg);
	if (ret)
		return ret;

	scratch = FUNC3(len, GFP_KERNEL | GFP_DMA);
	if (!scratch)
		return -ENOMEM;

	ret = FUNC5(dsp->regmap, reg, scratch, len);
	if (ret) {
		FUNC1(dsp, "Failed to read %zu bytes from %x: %d\n",
			 len, reg, ret);
		FUNC2(scratch);
		return ret;
	}
	FUNC0(dsp, "Read %zu bytes from %x\n", len, reg);

	FUNC4(buf, scratch, len);
	FUNC2(scratch);

	return 0;
}