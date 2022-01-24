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
typedef  int /*<<< orphan*/  u8 ;
struct snd_pcm_hardware {int /*<<< orphan*/  rates; void* rate_max; void* rate_min; void* channels_max; void* channels_min; } ;
struct snd_oxfw_stream_formation {int /*<<< orphan*/  rate; int /*<<< orphan*/  pcm; } ;

/* Variables and functions */
 int SND_OXFW_STREAM_FORMAT_ENTRIES ; 
 void* UINT_MAX ; 
 void* FUNC0 (void*,int /*<<< orphan*/ ) ; 
 void* FUNC1 (void*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,struct snd_oxfw_stream_formation*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct snd_pcm_hardware *hw, u8 **formats)
{
	struct snd_oxfw_stream_formation formation;
	int i, err;

	hw->channels_min = UINT_MAX;
	hw->channels_max = 0;

	hw->rate_min = UINT_MAX;
	hw->rate_max = 0;
	hw->rates = 0;

	for (i = 0; i < SND_OXFW_STREAM_FORMAT_ENTRIES; i++) {
		if (formats[i] == NULL)
			break;

		err = FUNC2(formats[i], &formation);
		if (err < 0)
			continue;

		hw->channels_min = FUNC1(hw->channels_min, formation.pcm);
		hw->channels_max = FUNC0(hw->channels_max, formation.pcm);

		hw->rate_min = FUNC1(hw->rate_min, formation.rate);
		hw->rate_max = FUNC0(hw->rate_max, formation.rate);
		hw->rates |= FUNC3(formation.rate);
	}
}