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
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {scalar_t__ rate_num; int rate_den; int rate; } ;
struct snd_es18xx {int caps; } ;
struct TYPE_4__ {scalar_t__ num; } ;
struct TYPE_3__ {scalar_t__ num; } ;

/* Variables and functions */
 int DAC2 ; 
 int ES18XX_NEW_RATE ; 
 int ES18XX_PCM2 ; 
 TYPE_2__* new_clocks ; 
 TYPE_1__* old_clocks ; 
 int /*<<< orphan*/  FUNC0 (struct snd_es18xx*,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_es18xx*,int,unsigned int) ; 

__attribute__((used)) static void FUNC2(struct snd_es18xx *chip, 
				struct snd_pcm_substream *substream,
				int mode)
{
	unsigned int bits, div0;
	struct snd_pcm_runtime *runtime = substream->runtime;
	if (chip->caps & ES18XX_NEW_RATE) {
		if (runtime->rate_num == new_clocks[0].num)
			bits = 128 - runtime->rate_den;
		else
			bits = 256 - runtime->rate_den;
	} else {
		if (runtime->rate_num == old_clocks[0].num)
			bits = 256 - runtime->rate_den;
		else
			bits = 128 - runtime->rate_den;
	}

	/* set filter register */
	div0 = 256 - 7160000*20/(8*82*runtime->rate);
		
	if ((chip->caps & ES18XX_PCM2) && mode == DAC2) {
		FUNC0(chip, 0x70, bits);
		/*
		 * Comment from kernel oss driver:
		 * FKS: fascinating: 0x72 doesn't seem to work.
		 */
		FUNC1(chip, 0xA2, div0);
		FUNC0(chip, 0x72, div0);
	} else {
		FUNC1(chip, 0xA1, bits);
		FUNC1(chip, 0xA2, div0);
	}
}