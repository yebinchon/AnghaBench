#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct snd_ff {int /*<<< orphan*/  unit; TYPE_1__* spec; } ;
typedef  int /*<<< orphan*/  __le32 ;
struct TYPE_2__ {int /*<<< orphan*/ * pcm_playback_channels; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FORMER_REG_FETCH_PCM_FRAMES ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int SND_FF_STREAM_MODE_COUNT ; 
 int /*<<< orphan*/  TCODE_WRITE_BLOCK_REQUEST ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/ * FUNC1 (unsigned int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC3 (unsigned int,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct snd_ff *ff, bool enable)
{
	unsigned int count;
	__le32 *reg;
	int i;
	int err;

	count = 0;
	for (i = 0; i < SND_FF_STREAM_MODE_COUNT; ++i)
		count = FUNC3(count, ff->spec->pcm_playback_channels[i]);

	reg = FUNC1(count, sizeof(__le32), GFP_KERNEL);
	if (!reg)
		return -ENOMEM;

	if (!enable) {
		/*
		 * Each quadlet is corresponding to data channels in a data
		 * blocks in reverse order. Precisely, quadlets for available
		 * data channels should be enabled. Here, I take second best
		 * to fetch PCM frames from all of data channels regardless of
		 * stf.
		 */
		for (i = 0; i < count; ++i)
			reg[i] = FUNC0(0x00000001);
	}

	err = FUNC4(ff->unit, TCODE_WRITE_BLOCK_REQUEST,
				 FORMER_REG_FETCH_PCM_FRAMES, reg,
				 sizeof(__le32) * count, 0);
	FUNC2(reg);
	return err;
}