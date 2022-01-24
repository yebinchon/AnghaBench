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
struct snd_wss {int* image; int /*<<< orphan*/  reg_lock; } ;
struct snd_pcm_hw_params {int /*<<< orphan*/  rate_den; } ;

/* Variables and functions */
 size_t CS4231_ALT_FEATURE_1 ; 
 size_t CS4231_REC_FORMAT ; 
 int /*<<< orphan*/  CS4236_ADC_RATE ; 
 unsigned char FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_wss*,int /*<<< orphan*/ ,unsigned char) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_wss*,size_t,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC5(struct snd_wss *chip,
				      struct snd_pcm_hw_params *params,
				      unsigned char cdfr)
{
	unsigned long flags;
	unsigned char rate = FUNC0(params->rate_den);
	
	FUNC3(&chip->reg_lock, flags);
	/* set fast capture format change and clean capture FIFO */
	FUNC2(chip, CS4231_ALT_FEATURE_1,
		    chip->image[CS4231_ALT_FEATURE_1] | 0x20);
	FUNC2(chip, CS4231_REC_FORMAT, cdfr & 0xf0);
	FUNC2(chip, CS4231_ALT_FEATURE_1,
		    chip->image[CS4231_ALT_FEATURE_1] & ~0x20);
	FUNC1(chip, CS4236_ADC_RATE, rate);
	FUNC4(&chip->reg_lock, flags);
}