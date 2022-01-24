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
typedef  unsigned int u32 ;
typedef  int u16 ;
struct oxygen {int pcm_active; unsigned int spdif_pcm_bits; unsigned int spdif_bits; scalar_t__ spdif_playback_enable; } ;

/* Variables and functions */
 int /*<<< orphan*/  OXYGEN_I2S_MULTICH_FORMAT ; 
 unsigned int OXYGEN_I2S_RATE_MASK ; 
 int /*<<< orphan*/  OXYGEN_PLAY_ROUTING ; 
 int OXYGEN_PLAY_SPDIF_MASK ; 
 int OXYGEN_PLAY_SPDIF_MULTICH_01 ; 
 int OXYGEN_PLAY_SPDIF_SPDIF ; 
 unsigned int OXYGEN_RATE_44100 ; 
 int /*<<< orphan*/  OXYGEN_SPDIF_CONTROL ; 
 int /*<<< orphan*/  OXYGEN_SPDIF_OUTPUT_BITS ; 
 unsigned int OXYGEN_SPDIF_OUT_ENABLE ; 
 unsigned int OXYGEN_SPDIF_OUT_RATE_MASK ; 
 unsigned int OXYGEN_SPDIF_OUT_RATE_SHIFT ; 
 int PCM_MULTICH ; 
 int PCM_SPDIF ; 
 unsigned int FUNC0 (struct oxygen*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (struct oxygen*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct oxygen*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct oxygen*,int /*<<< orphan*/ ,unsigned int) ; 

void FUNC5(struct oxygen *chip)
{
	u32 old_control, new_control;
	u16 old_routing, new_routing;
	unsigned int oxygen_rate;

	old_control = FUNC1(chip, OXYGEN_SPDIF_CONTROL);
	old_routing = FUNC0(chip, OXYGEN_PLAY_ROUTING);
	if (chip->pcm_active & (1 << PCM_SPDIF)) {
		new_control = old_control | OXYGEN_SPDIF_OUT_ENABLE;
		new_routing = (old_routing & ~OXYGEN_PLAY_SPDIF_MASK)
			| OXYGEN_PLAY_SPDIF_SPDIF;
		oxygen_rate = (old_control >> OXYGEN_SPDIF_OUT_RATE_SHIFT)
			& OXYGEN_I2S_RATE_MASK;
		/* S/PDIF rate was already set by the caller */
	} else if ((chip->pcm_active & (1 << PCM_MULTICH)) &&
		   chip->spdif_playback_enable) {
		new_routing = (old_routing & ~OXYGEN_PLAY_SPDIF_MASK)
			| OXYGEN_PLAY_SPDIF_MULTICH_01;
		oxygen_rate = FUNC0(chip, OXYGEN_I2S_MULTICH_FORMAT)
			& OXYGEN_I2S_RATE_MASK;
		new_control = (old_control & ~OXYGEN_SPDIF_OUT_RATE_MASK) |
			(oxygen_rate << OXYGEN_SPDIF_OUT_RATE_SHIFT) |
			OXYGEN_SPDIF_OUT_ENABLE;
	} else {
		new_control = old_control & ~OXYGEN_SPDIF_OUT_ENABLE;
		new_routing = old_routing;
		oxygen_rate = OXYGEN_RATE_44100;
	}
	if (old_routing != new_routing) {
		FUNC4(chip, OXYGEN_SPDIF_CONTROL,
			       new_control & ~OXYGEN_SPDIF_OUT_ENABLE);
		FUNC3(chip, OXYGEN_PLAY_ROUTING, new_routing);
	}
	if (new_control & OXYGEN_SPDIF_OUT_ENABLE)
		FUNC4(chip, OXYGEN_SPDIF_OUTPUT_BITS,
			       FUNC2(oxygen_rate) |
			       ((chip->pcm_active & (1 << PCM_SPDIF)) ?
				chip->spdif_pcm_bits : chip->spdif_bits));
	FUNC4(chip, OXYGEN_SPDIF_CONTROL, new_control);
}