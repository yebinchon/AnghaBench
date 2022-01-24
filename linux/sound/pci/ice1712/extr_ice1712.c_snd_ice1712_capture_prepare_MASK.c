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
typedef  int u8 ;
typedef  int u32 ;
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int channels; int /*<<< orphan*/  rate; int /*<<< orphan*/  dma_addr; int /*<<< orphan*/  format; } ;
struct snd_ice1712 {int /*<<< orphan*/  ac97; int /*<<< orphan*/  reg_lock; int /*<<< orphan*/  capture_con_virt_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  AC97_PCM_LR_ADC_RATE ; 
 int /*<<< orphan*/  CONCAP_ADDR ; 
 int /*<<< orphan*/  CONCAP_COUNT ; 
 int /*<<< orphan*/  ICE1712_IREG_CAP_COUNT_HI ; 
 int /*<<< orphan*/  ICE1712_IREG_CAP_COUNT_LO ; 
 int /*<<< orphan*/  ICE1712_IREG_CAP_CTRL ; 
 int /*<<< orphan*/  FUNC0 (struct snd_ice1712*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_ice1712*,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct snd_pcm_substream*) ; 
 int FUNC7 (struct snd_pcm_substream*) ; 
 struct snd_ice1712* FUNC8 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(struct snd_pcm_substream *substream)
{
	struct snd_ice1712 *ice = FUNC8(substream);
	struct snd_pcm_runtime *runtime = substream->runtime;
	u32 period_size, buf_size;
	u8 tmp;

	period_size = (FUNC7(substream) >> 2) - 1;
	buf_size = FUNC6(substream) - 1;
	tmp = 0x06;
	if (FUNC5(runtime->format) == 16)
		tmp &= ~0x04;
	if (runtime->channels == 2)
		tmp &= ~0x02;
	FUNC9(&ice->reg_lock);
	FUNC1(ice->capture_con_virt_addr = runtime->dma_addr, FUNC0(ice, CONCAP_ADDR));
	FUNC2(buf_size, FUNC0(ice, CONCAP_COUNT));
	FUNC4(ice, ICE1712_IREG_CAP_COUNT_HI, period_size >> 8);
	FUNC4(ice, ICE1712_IREG_CAP_COUNT_LO, period_size & 0xff);
	FUNC4(ice, ICE1712_IREG_CAP_CTRL, tmp);
	FUNC10(&ice->reg_lock);
	FUNC3(ice->ac97, AC97_PCM_LR_ADC_RATE, runtime->rate);
	return 0;
}