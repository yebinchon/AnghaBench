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
struct snd_pcm_runtime {int rate; int channels; int sample_bits; } ;
struct intel8x0 {int device_type; int /*<<< orphan*/  reg_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  ALI_SCR ; 
#define  DEVICE_ALI 129 
 int DEVICE_INTEL_ICH4 ; 
 int DEVICE_NFORCE ; 
#define  DEVICE_SIS 128 
 int /*<<< orphan*/  GLOB_CNT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int ICH_ALI_SC_PCM_246_MASK ; 
 unsigned int ICH_ALI_SC_PCM_4 ; 
 unsigned int ICH_ALI_SC_PCM_6 ; 
 unsigned int ICH_PCM_20BIT ; 
 unsigned int ICH_PCM_246_MASK ; 
 unsigned int ICH_PCM_4 ; 
 unsigned int ICH_PCM_6 ; 
 unsigned int ICH_PCM_8 ; 
 unsigned int ICH_SIS_PCM_246_MASK ; 
 unsigned int ICH_SIS_PCM_4 ; 
 unsigned int ICH_SIS_PCM_6 ; 
 unsigned int FUNC1 (struct intel8x0*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct intel8x0*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct intel8x0 *chip,
				       struct snd_pcm_runtime *runtime)
{
	unsigned int cnt;
	int dbl = runtime->rate > 48000;

	FUNC4(&chip->reg_lock);
	switch (chip->device_type) {
	case DEVICE_ALI:
		cnt = FUNC1(chip, FUNC0(ALI_SCR));
		cnt &= ~ICH_ALI_SC_PCM_246_MASK;
		if (runtime->channels == 4 || dbl)
			cnt |= ICH_ALI_SC_PCM_4;
		else if (runtime->channels == 6)
			cnt |= ICH_ALI_SC_PCM_6;
		FUNC2(chip, FUNC0(ALI_SCR), cnt);
		break;
	case DEVICE_SIS:
		cnt = FUNC1(chip, FUNC0(GLOB_CNT));
		cnt &= ~ICH_SIS_PCM_246_MASK;
		if (runtime->channels == 4 || dbl)
			cnt |= ICH_SIS_PCM_4;
		else if (runtime->channels == 6)
			cnt |= ICH_SIS_PCM_6;
		FUNC2(chip, FUNC0(GLOB_CNT), cnt);
		break;
	default:
		cnt = FUNC1(chip, FUNC0(GLOB_CNT));
		cnt &= ~(ICH_PCM_246_MASK | ICH_PCM_20BIT);
		if (runtime->channels == 4 || dbl)
			cnt |= ICH_PCM_4;
		else if (runtime->channels == 6)
			cnt |= ICH_PCM_6;
		else if (runtime->channels == 8)
			cnt |= ICH_PCM_8;
		if (chip->device_type == DEVICE_NFORCE) {
			/* reset to 2ch once to keep the 6 channel data in alignment,
			 * to start from Front Left always
			 */
			if (cnt & ICH_PCM_246_MASK) {
				FUNC2(chip, FUNC0(GLOB_CNT), cnt & ~ICH_PCM_246_MASK);
				FUNC5(&chip->reg_lock);
				FUNC3(50); /* grrr... */
				FUNC4(&chip->reg_lock);
			}
		} else if (chip->device_type == DEVICE_INTEL_ICH4) {
			if (runtime->sample_bits > 16)
				cnt |= ICH_PCM_20BIT;
		}
		FUNC2(chip, FUNC0(GLOB_CNT), cnt);
		break;
	}
	FUNC5(&chip->reg_lock);
}