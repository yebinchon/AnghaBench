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
struct snd_pcm {int /*<<< orphan*/  name; int /*<<< orphan*/  dev_subclass; int /*<<< orphan*/  dev_class; scalar_t__ info_flags; int /*<<< orphan*/  private_free; struct snd_ali* private_data; } ;
struct snd_ali {struct snd_pcm** pcm; int /*<<< orphan*/  pci; TYPE_1__* card; } ;
struct ali_pcm_description {int /*<<< orphan*/  name; int /*<<< orphan*/  class; scalar_t__ capture_ops; scalar_t__ playback_ops; int /*<<< orphan*/  capture_num; int /*<<< orphan*/  playback_num; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  SNDRV_DMA_TYPE_DEV ; 
 int /*<<< orphan*/  SNDRV_PCM_STREAM_CAPTURE ; 
 int /*<<< orphan*/  SNDRV_PCM_STREAM_PLAYBACK ; 
 int /*<<< orphan*/  SNDRV_PCM_SUBCLASS_GENERIC_MIX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  snd_ali_pcm_free ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_pcm*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct snd_pcm**) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_pcm*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct snd_ali *codec, int device,
		       struct ali_pcm_description *desc)
{
	struct snd_pcm *pcm;
	int err;

	err = FUNC3(codec->card, desc->name, device,
			  desc->playback_num, desc->capture_num, &pcm);
	if (err < 0) {
		FUNC0(codec->card->dev,
			"snd_ali_pcm: err called snd_pcm_new.\n");
		return err;
	}
	pcm->private_data = codec;
	pcm->private_free = snd_ali_pcm_free;
	if (desc->playback_ops)
		FUNC4(pcm, SNDRV_PCM_STREAM_PLAYBACK,
				desc->playback_ops);
	if (desc->capture_ops)
		FUNC4(pcm, SNDRV_PCM_STREAM_CAPTURE,
				desc->capture_ops);

	FUNC2(pcm, SNDRV_DMA_TYPE_DEV,
					      FUNC1(codec->pci),
					      64*1024, 128*1024);

	pcm->info_flags = 0;
	pcm->dev_class = desc->class;
	pcm->dev_subclass = SNDRV_PCM_SUBCLASS_GENERIC_MIX;
	FUNC5(pcm->name, desc->name);
	codec->pcm[0] = pcm;
	return 0;
}