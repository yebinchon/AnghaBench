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
struct snd_pcm_substream {size_t number; struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int channels; int rate; int dma_addr; int periods; int /*<<< orphan*/  format; } ;
struct snd_ice1712 {int* playback_con_virt_addr; int /*<<< orphan*/  reg_lock; scalar_t__* playback_con_active_buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  ICE1712_DSC_ADDR0 ; 
 int /*<<< orphan*/  ICE1712_DSC_ADDR1 ; 
 int /*<<< orphan*/  ICE1712_DSC_CONTROL ; 
 int /*<<< orphan*/  ICE1712_DSC_COUNT0 ; 
 int /*<<< orphan*/  ICE1712_DSC_COUNT1 ; 
 int /*<<< orphan*/  ICE1712_DSC_RATE ; 
 int /*<<< orphan*/  ICE1712_DSC_VOLUME ; 
 int /*<<< orphan*/  FUNC0 (struct snd_ice1712*,int,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct snd_pcm_substream*) ; 
 struct snd_ice1712* FUNC3 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct snd_pcm_substream *substream)
{
	struct snd_ice1712 *ice = FUNC3(substream);
	struct snd_pcm_runtime *runtime = substream->runtime;
	u32 period_size, rate, tmp, chn;

	period_size = FUNC2(substream) - 1;
	tmp = 0x0064;
	if (FUNC1(runtime->format) == 16)
		tmp &= ~0x04;
	if (runtime->channels == 2)
		tmp |= 0x08;
	rate = (runtime->rate * 8192) / 375;
	if (rate > 0x000fffff)
		rate = 0x000fffff;
	ice->playback_con_active_buf[substream->number] = 0;
	ice->playback_con_virt_addr[substream->number] = runtime->dma_addr;
	chn = substream->number * 2;
	FUNC4(&ice->reg_lock);
	FUNC0(ice, chn, ICE1712_DSC_ADDR0, runtime->dma_addr);
	FUNC0(ice, chn, ICE1712_DSC_COUNT0, period_size);
	FUNC0(ice, chn, ICE1712_DSC_ADDR1, runtime->dma_addr + (runtime->periods > 1 ? period_size + 1 : 0));
	FUNC0(ice, chn, ICE1712_DSC_COUNT1, period_size);
	FUNC0(ice, chn, ICE1712_DSC_RATE, rate);
	FUNC0(ice, chn, ICE1712_DSC_VOLUME, 0);
	FUNC0(ice, chn, ICE1712_DSC_CONTROL, tmp);
	if (runtime->channels == 2) {
		FUNC0(ice, chn + 1, ICE1712_DSC_RATE, rate);
		FUNC0(ice, chn + 1, ICE1712_DSC_VOLUME, 0);
	}
	FUNC5(&ice->reg_lock);
	return 0;
}