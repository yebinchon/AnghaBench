#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  pcm_id; } ;
struct snd_sof_pcm {TYPE_4__ pcm; TYPE_3__* stream; } ;
struct snd_sof_dev {int /*<<< orphan*/  dev; } ;
struct snd_soc_pcm_runtime {TYPE_1__* dai_link; } ;
struct snd_soc_component {int dummy; } ;
struct snd_pcm_substream {size_t stream; int /*<<< orphan*/  runtime; struct snd_soc_pcm_runtime* private_data; } ;
typedef  int /*<<< orphan*/  snd_pcm_uframes_t ;
struct TYPE_10__ {int /*<<< orphan*/  (* pcm_pointer ) (struct snd_sof_dev*,struct snd_pcm_substream*) ;} ;
struct TYPE_7__ {int /*<<< orphan*/  dai_posn; int /*<<< orphan*/  host_posn; } ;
struct TYPE_8__ {TYPE_2__ posn; } ;
struct TYPE_6__ {scalar_t__ no_pcm; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRV_NAME ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct snd_sof_dev* FUNC2 (struct snd_soc_component*) ; 
 struct snd_soc_component* FUNC3 (struct snd_soc_pcm_runtime*,int /*<<< orphan*/ ) ; 
 struct snd_sof_pcm* FUNC4 (struct snd_sof_dev*,struct snd_soc_pcm_runtime*) ; 
 TYPE_5__* FUNC5 (struct snd_sof_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_sof_dev*,struct snd_pcm_substream*) ; 

__attribute__((used)) static snd_pcm_uframes_t FUNC7(struct snd_pcm_substream *substream)
{
	struct snd_soc_pcm_runtime *rtd = substream->private_data;
	struct snd_soc_component *component =
		FUNC3(rtd, DRV_NAME);
	struct snd_sof_dev *sdev = FUNC2(component);
	struct snd_sof_pcm *spcm;
	snd_pcm_uframes_t host, dai;

	/* nothing to do for BE */
	if (rtd->dai_link->no_pcm)
		return 0;

	/* use dsp ops pointer callback directly if set */
	if (FUNC5(sdev)->pcm_pointer)
		return FUNC5(sdev)->pcm_pointer(sdev, substream);

	spcm = FUNC4(sdev, rtd);
	if (!spcm)
		return -EINVAL;

	/* read position from DSP */
	host = FUNC0(substream->runtime,
			       spcm->stream[substream->stream].posn.host_posn);
	dai = FUNC0(substream->runtime,
			      spcm->stream[substream->stream].posn.dai_posn);

	FUNC1(sdev->dev, "PCM: stream %d dir %d DMA position %lu DAI position %lu\n",
		spcm->pcm.pcm_id, substream->stream, host, dai);

	return host;
}