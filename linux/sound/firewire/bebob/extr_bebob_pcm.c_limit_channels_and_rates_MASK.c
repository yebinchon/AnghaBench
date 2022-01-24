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
struct snd_pcm_hardware {int /*<<< orphan*/  rates; void* rate_max; void* rate_min; void* channels_max; void* channels_min; } ;
struct snd_bebob_stream_formation {scalar_t__ pcm; } ;

/* Variables and functions */
 unsigned int SND_BEBOB_STRM_FMT_ENTRIES ; 
 void* UINT_MAX ; 
 void* FUNC0 (void*,scalar_t__) ; 
 void* FUNC1 (void*,scalar_t__) ; 
 scalar_t__* snd_bebob_rate_table ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 

__attribute__((used)) static void
FUNC3(struct snd_pcm_hardware *hw,
			 struct snd_bebob_stream_formation *formations)
{
	unsigned int i;

	hw->channels_min = UINT_MAX;
	hw->channels_max = 0;

	hw->rate_min = UINT_MAX;
	hw->rate_max = 0;
	hw->rates = 0;

	for (i = 0; i < SND_BEBOB_STRM_FMT_ENTRIES; i++) {
		/* entry has no PCM channels */
		if (formations[i].pcm == 0)
			continue;

		hw->channels_min = FUNC1(hw->channels_min, formations[i].pcm);
		hw->channels_max = FUNC0(hw->channels_max, formations[i].pcm);

		hw->rate_min = FUNC1(hw->rate_min, snd_bebob_rate_table[i]);
		hw->rate_max = FUNC0(hw->rate_max, snd_bebob_rate_table[i]);
		hw->rates |= FUNC2(snd_bebob_rate_table[i]);
	}
}