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
struct snd_pcm_hardware {int /*<<< orphan*/  channels_max; int /*<<< orphan*/  channels_min; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UINT_MAX ; 
 int /*<<< orphan*/  freq_table ; 
 unsigned int FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static void
FUNC4(struct snd_pcm_hardware *hw, unsigned int *pcm_channels)
{
	unsigned int i, mode;

	hw->channels_min = UINT_MAX;
	hw->channels_max = 0;

	for (i = 0; i < FUNC0(freq_table); i++) {
		mode = FUNC1(i);
		if (pcm_channels[mode] == 0)
			continue;

		hw->channels_min = FUNC3(hw->channels_min, pcm_channels[mode]);
		hw->channels_max = FUNC2(hw->channels_max, pcm_channels[mode]);
	}
}