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
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int channels; int rate; int /*<<< orphan*/  dma_addr; int /*<<< orphan*/  format; } ;
struct snd_ice1712 {int /*<<< orphan*/  reg_lock; scalar_t__ ddma_port; } ;

/* Variables and functions */
 int ICE1712_DMA_AUTOINIT ; 
 int ICE1712_DMA_MODE_WRITE ; 
 int /*<<< orphan*/  ICE1712_IREG_PBK_COUNT_HI ; 
 int /*<<< orphan*/  ICE1712_IREG_PBK_COUNT_LO ; 
 int /*<<< orphan*/  ICE1712_IREG_PBK_CTRL ; 
 int /*<<< orphan*/  ICE1712_IREG_PBK_LEFT ; 
 int /*<<< orphan*/  ICE1712_IREG_PBK_RATE_HI ; 
 int /*<<< orphan*/  ICE1712_IREG_PBK_RATE_LO ; 
 int /*<<< orphan*/  ICE1712_IREG_PBK_RATE_MID ; 
 int /*<<< orphan*/  ICE1712_IREG_PBK_RIGHT ; 
 int /*<<< orphan*/  FUNC0 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_ice1712*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct snd_pcm_substream*) ; 
 int FUNC6 (struct snd_pcm_substream*) ; 
 struct snd_ice1712* FUNC7 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct snd_pcm_substream *substream)
{
	struct snd_ice1712 *ice = FUNC7(substream);
	struct snd_pcm_runtime *runtime = substream->runtime;
	u32 period_size, buf_size, rate, tmp;

	period_size = (FUNC6(substream) >> 2) - 1;
	buf_size = FUNC5(substream) - 1;
	tmp = 0x0000;
	if (FUNC4(runtime->format) == 16)
		tmp |= 0x10;
	if (runtime->channels == 2)
		tmp |= 0x08;
	rate = (runtime->rate * 8192) / 375;
	if (rate > 0x000fffff)
		rate = 0x000fffff;
	FUNC8(&ice->reg_lock);
	FUNC0(0, ice->ddma_port + 15);
	FUNC0(ICE1712_DMA_MODE_WRITE | ICE1712_DMA_AUTOINIT, ice->ddma_port + 0x0b);
	FUNC1(runtime->dma_addr, ice->ddma_port + 0);
	FUNC2(buf_size, ice->ddma_port + 4);
	FUNC3(ice, ICE1712_IREG_PBK_RATE_LO, rate & 0xff);
	FUNC3(ice, ICE1712_IREG_PBK_RATE_MID, (rate >> 8) & 0xff);
	FUNC3(ice, ICE1712_IREG_PBK_RATE_HI, (rate >> 16) & 0xff);
	FUNC3(ice, ICE1712_IREG_PBK_CTRL, tmp);
	FUNC3(ice, ICE1712_IREG_PBK_COUNT_LO, period_size & 0xff);
	FUNC3(ice, ICE1712_IREG_PBK_COUNT_HI, period_size >> 8);
	FUNC3(ice, ICE1712_IREG_PBK_LEFT, 0);
	FUNC3(ice, ICE1712_IREG_PBK_RIGHT, 0);
	FUNC9(&ice->reg_lock);
	return 0;
}