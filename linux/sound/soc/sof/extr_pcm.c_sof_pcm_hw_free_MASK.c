#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  pcm_id; } ;
struct snd_sof_pcm {TYPE_3__* stream; scalar_t__* prepared; TYPE_2__ pcm; } ;
struct snd_sof_dev {int /*<<< orphan*/  dev; } ;
struct snd_soc_pcm_runtime {TYPE_1__* dai_link; } ;
struct snd_soc_component {int dummy; } ;
struct snd_pcm_substream {size_t stream; struct snd_soc_pcm_runtime* private_data; } ;
struct TYPE_6__ {int /*<<< orphan*/  period_elapsed_work; } ;
struct TYPE_4__ {scalar_t__ no_pcm; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRV_NAME ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_pcm_substream*) ; 
 struct snd_sof_dev* FUNC4 (struct snd_soc_component*) ; 
 struct snd_soc_component* FUNC5 (struct snd_soc_pcm_runtime*,int /*<<< orphan*/ ) ; 
 struct snd_sof_pcm* FUNC6 (struct snd_sof_dev*,struct snd_soc_pcm_runtime*) ; 
 int FUNC7 (struct snd_sof_dev*,struct snd_pcm_substream*) ; 
 int FUNC8 (struct snd_pcm_substream*,struct snd_sof_dev*,struct snd_sof_pcm*) ; 

__attribute__((used)) static int FUNC9(struct snd_pcm_substream *substream)
{
	struct snd_soc_pcm_runtime *rtd = substream->private_data;
	struct snd_soc_component *component =
		FUNC5(rtd, DRV_NAME);
	struct snd_sof_dev *sdev = FUNC4(component);
	struct snd_sof_pcm *spcm;
	int ret, err = 0;

	/* nothing to do for BE */
	if (rtd->dai_link->no_pcm)
		return 0;

	spcm = FUNC6(sdev, rtd);
	if (!spcm)
		return -EINVAL;

	FUNC1(sdev->dev, "pcm: free stream %d dir %d\n", spcm->pcm.pcm_id,
		substream->stream);

	if (spcm->prepared[substream->stream]) {
		ret = FUNC8(substream, sdev, spcm);
		if (ret < 0)
			err = ret;
	}

	FUNC3(substream);

	FUNC0(&spcm->stream[substream->stream].period_elapsed_work);

	ret = FUNC7(sdev, substream);
	if (ret < 0) {
		FUNC2(sdev->dev, "error: platform hw free failed\n");
		err = ret;
	}

	return err;
}