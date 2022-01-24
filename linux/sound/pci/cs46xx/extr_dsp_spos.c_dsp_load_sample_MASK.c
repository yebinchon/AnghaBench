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
typedef  int u32 ;
struct snd_cs46xx {TYPE_1__* card; } ;
struct dsp_segment_desc {int offset; int size; int /*<<< orphan*/  data; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int DSP_SAMPLE_BYTE_OFFSET ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (struct snd_cs46xx*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC3(struct snd_cs46xx *chip,
			   struct dsp_segment_desc *sample)
{
	u32 doffset, dsize;

	if (!sample) {
		FUNC0(chip->card->dev,
			"dsp_spos: module got no sample segment\n");
		return 0;
	}

	doffset = (sample->offset * 4  + DSP_SAMPLE_BYTE_OFFSET);
	dsize   =  sample->size * 4;

	FUNC0(chip->card->dev,
		"dsp_spos: downloading sample data to chip (%08x-%08x)\n",
		    doffset,doffset + dsize);

	if (FUNC2 (chip,sample->data,doffset,dsize)) {
		FUNC1(chip->card->dev,
			"dsp_spos: failed to sample data to DSP\n");
		return -EINVAL;
	}
	return 0;
}