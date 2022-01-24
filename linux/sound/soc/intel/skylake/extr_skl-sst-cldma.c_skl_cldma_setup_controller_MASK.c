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
typedef  int u32 ;
struct sst_dsp {int dummy; } ;
struct snd_dma_buffer {int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  CL_SD_CTL_DEIE_MASK ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  CL_SD_CTL_FEIE_MASK ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  CL_SD_CTL_IOCE_MASK ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CL_SD_CTL_STRM_MASK ; 
 int /*<<< orphan*/  FW_CL_STREAM_NUMBER ; 
 int /*<<< orphan*/  SKL_ADSP_REG_CL_SD_BDLPL ; 
 int /*<<< orphan*/  SKL_ADSP_REG_CL_SD_BDLPU ; 
 int /*<<< orphan*/  SKL_ADSP_REG_CL_SD_CBL ; 
 int /*<<< orphan*/  SKL_ADSP_REG_CL_SD_CTL ; 
 int /*<<< orphan*/  SKL_ADSP_REG_CL_SD_LVI ; 
 int /*<<< orphan*/  FUNC6 (struct sst_dsp*) ; 
 int /*<<< orphan*/  FUNC7 (struct sst_dsp*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct sst_dsp*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC9(struct sst_dsp  *ctx,
		struct snd_dma_buffer *dmab_bdl, unsigned int max_size,
		u32 count)
{
	FUNC6(ctx);
	FUNC8(ctx, SKL_ADSP_REG_CL_SD_BDLPL,
			FUNC0(dmab_bdl->addr));
	FUNC8(ctx, SKL_ADSP_REG_CL_SD_BDLPU,
			FUNC1(dmab_bdl->addr));

	FUNC8(ctx, SKL_ADSP_REG_CL_SD_CBL, max_size);
	FUNC8(ctx, SKL_ADSP_REG_CL_SD_LVI, count - 1);
	FUNC7(ctx, SKL_ADSP_REG_CL_SD_CTL,
			CL_SD_CTL_IOCE_MASK, FUNC4(1));
	FUNC7(ctx, SKL_ADSP_REG_CL_SD_CTL,
			CL_SD_CTL_FEIE_MASK, FUNC3(1));
	FUNC7(ctx, SKL_ADSP_REG_CL_SD_CTL,
			CL_SD_CTL_DEIE_MASK, FUNC2(1));
	FUNC7(ctx, SKL_ADSP_REG_CL_SD_CTL,
			CL_SD_CTL_STRM_MASK, FUNC5(FW_CL_STREAM_NUMBER));
}