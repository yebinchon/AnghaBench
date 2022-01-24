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
struct snd_pcm_substream {TYPE_1__* runtime; } ;
struct cmipci {int /*<<< orphan*/ * channel; int /*<<< orphan*/  reg_lock; scalar_t__ can_96k; } ;
struct TYPE_2__ {int rate; int /*<<< orphan*/  format; } ;

/* Variables and functions */
 int /*<<< orphan*/  CM_CAPTURE_SPDF ; 
 size_t CM_CH_CAPT ; 
 int /*<<< orphan*/  CM_DBLSPDS ; 
 int /*<<< orphan*/  CM_REG_CHFORMAT ; 
 int /*<<< orphan*/  CM_REG_FUNCTRL1 ; 
 int /*<<< orphan*/  CM_REG_MISC_CTRL ; 
 int /*<<< orphan*/  CM_SPD32SEL ; 
 int /*<<< orphan*/  FUNC0 (struct cmipci*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct cmipci*,int /*<<< orphan*/ *,struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC2 (struct cmipci*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 struct cmipci* FUNC4 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct snd_pcm_substream *substream)
{
	struct cmipci *cm = FUNC4(substream);

	FUNC5(&cm->reg_lock);
	FUNC2(cm, CM_REG_FUNCTRL1, CM_CAPTURE_SPDF);
	if (cm->can_96k) {
		if (substream->runtime->rate > 48000)
			FUNC2(cm, CM_REG_CHFORMAT, CM_DBLSPDS);
		else
			FUNC0(cm, CM_REG_CHFORMAT, CM_DBLSPDS);
	}
	if (FUNC3(substream->runtime->format) > 16)
		FUNC2(cm, CM_REG_MISC_CTRL, CM_SPD32SEL);
	else
		FUNC0(cm, CM_REG_MISC_CTRL, CM_SPD32SEL);

	FUNC6(&cm->reg_lock);

	return FUNC1(cm, &cm->channel[CM_CH_CAPT], substream);
}