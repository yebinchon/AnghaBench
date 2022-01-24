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
struct snd_pcm_substream {int dummy; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct azx_pcm {struct azx* chip; } ;
struct TYPE_2__ {scalar_t__ format_val; scalar_t__ period_bytes; scalar_t__ bufsize; } ;
struct azx_dev {TYPE_1__ core; } ;
struct azx {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 scalar_t__ FUNC0 (struct azx_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct azx_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct azx_dev*) ; 
 struct azx_dev* FUNC3 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_pcm_hw_params*) ; 
 int FUNC5 (struct snd_pcm_substream*,int /*<<< orphan*/ ) ; 
 struct azx_pcm* FUNC6 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC7 (struct azx*,struct azx_dev*) ; 

__attribute__((used)) static int FUNC8(struct snd_pcm_substream *substream,
			     struct snd_pcm_hw_params *hw_params)
{
	struct azx_pcm *apcm = FUNC6(substream);
	struct azx *chip = apcm->chip;
	struct azx_dev *azx_dev = FUNC3(substream);
	int ret;

	FUNC7(chip, azx_dev);
	FUNC1(azx_dev);
	if (FUNC0(azx_dev)) {
		ret = -EBUSY;
		goto unlock;
	}

	azx_dev->core.bufsize = 0;
	azx_dev->core.period_bytes = 0;
	azx_dev->core.format_val = 0;
	ret = FUNC5(substream,
				       FUNC4(hw_params));

unlock:
	FUNC2(azx_dev);
	return ret;
}