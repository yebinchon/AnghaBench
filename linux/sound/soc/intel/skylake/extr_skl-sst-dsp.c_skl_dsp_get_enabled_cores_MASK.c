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
typedef  unsigned int u32 ;
struct sst_dsp {int /*<<< orphan*/  dev; struct skl_dev* thread_context; } ;
struct TYPE_2__ {int /*<<< orphan*/  count; } ;
struct skl_dev {TYPE_1__ cores; } ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int) ; 
 unsigned int SKL_ADSPCS_CPA_SHIFT ; 
 unsigned int FUNC1 (unsigned int) ; 
 unsigned int SKL_ADSPCS_CRST_SHIFT ; 
 unsigned int FUNC2 (unsigned int) ; 
 unsigned int SKL_ADSPCS_CSTALL_SHIFT ; 
 int /*<<< orphan*/  SKL_ADSP_REG_ADSPCS ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,unsigned int) ; 
 unsigned int FUNC5 (struct sst_dsp*,int /*<<< orphan*/ ) ; 

unsigned int FUNC6(struct sst_dsp *ctx)
{
	struct skl_dev *skl = ctx->thread_context;
	unsigned int core_mask, en_cores_mask;
	u32 val;

	core_mask = FUNC3(skl->cores.count);

	val = FUNC5(ctx, SKL_ADSP_REG_ADSPCS);

	/* Cores having CPA bit set */
	en_cores_mask = (val & FUNC0(core_mask)) >>
			SKL_ADSPCS_CPA_SHIFT;

	/* And cores having CRST bit cleared */
	en_cores_mask &= (~val & FUNC1(core_mask)) >>
			SKL_ADSPCS_CRST_SHIFT;

	/* And cores having CSTALL bit cleared */
	en_cores_mask &= (~val & FUNC2(core_mask)) >>
			SKL_ADSPCS_CSTALL_SHIFT;
	en_cores_mask &= core_mask;

	FUNC4(ctx->dev, "DSP enabled cores mask = %x\n", en_cores_mask);

	return en_cores_mask;
}