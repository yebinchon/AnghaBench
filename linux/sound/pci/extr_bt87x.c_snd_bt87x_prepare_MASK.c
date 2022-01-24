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
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int rate; scalar_t__ format; } ;
struct snd_bt87x {int reg_control; int /*<<< orphan*/  reg_lock; } ;

/* Variables and functions */
 int ANALOG_CLOCK ; 
 int CTL_DA_SBR ; 
 int CTL_DA_SDR_MASK ; 
 int CTL_DA_SDR_SHIFT ; 
 int /*<<< orphan*/  REG_GPIO_DMA_CTL ; 
 scalar_t__ SNDRV_PCM_FORMAT_S8 ; 
 int /*<<< orphan*/  FUNC0 (struct snd_bt87x*,int /*<<< orphan*/ ,int) ; 
 struct snd_bt87x* FUNC1 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct snd_pcm_substream *substream)
{
	struct snd_bt87x *chip = FUNC1(substream);
	struct snd_pcm_runtime *runtime = substream->runtime;
	int decimation;

	FUNC2(&chip->reg_lock);
	chip->reg_control &= ~(CTL_DA_SDR_MASK | CTL_DA_SBR);
	decimation = (ANALOG_CLOCK + runtime->rate / 4) / runtime->rate;
	chip->reg_control |= decimation << CTL_DA_SDR_SHIFT;
	if (runtime->format == SNDRV_PCM_FORMAT_S8)
		chip->reg_control |= CTL_DA_SBR;
	FUNC0(chip, REG_GPIO_DMA_CTL, chip->reg_control);
	FUNC3(&chip->reg_lock);
	return 0;
}