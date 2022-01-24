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
struct snd_pcm {int nonatomic; int /*<<< orphan*/  name; scalar_t__ info_flags; struct lx6464es* private_data; } ;
struct TYPE_2__ {int is_capture; } ;
struct lx6464es {TYPE_1__ capture_stream; struct snd_pcm* pcm; int /*<<< orphan*/  pci; int /*<<< orphan*/  card; } ;

/* Variables and functions */
 int MAX_STREAM_BUFFER ; 
 int MICROBLAZE_IBL_MAX ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  SNDRV_DMA_TYPE_DEV ; 
 int /*<<< orphan*/  SNDRV_PCM_STREAM_CAPTURE ; 
 int /*<<< orphan*/  SNDRV_PCM_STREAM_PLAYBACK ; 
 scalar_t__ card_name ; 
 int /*<<< orphan*/  lx_ops_capture ; 
 int /*<<< orphan*/  lx_ops_playback ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_pcm*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,int,struct snd_pcm**) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_pcm*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC6(struct lx6464es *chip)
{
	int err;
	struct snd_pcm *pcm;

	u32 size = 64 *		     /* channels */
		3 *		     /* 24 bit samples */
		MAX_STREAM_BUFFER *  /* periods */
		MICROBLAZE_IBL_MAX * /* frames per period */
		2;		     /* duplex */

	size = FUNC0(size);

	/* hardcoded device name & channel count */
	err = FUNC3(chip->card, (char *)card_name, 0,
			  1, 1, &pcm);
	if (err < 0)
		return err;

	pcm->private_data = chip;

	FUNC4(pcm, SNDRV_PCM_STREAM_PLAYBACK, &lx_ops_playback);
	FUNC4(pcm, SNDRV_PCM_STREAM_CAPTURE, &lx_ops_capture);

	pcm->info_flags = 0;
	pcm->nonatomic = true;
	FUNC5(pcm->name, card_name);

	FUNC2(pcm, SNDRV_DMA_TYPE_DEV,
					      FUNC1(chip->pci),
					      size, size);

	chip->pcm = pcm;
	chip->capture_stream.is_capture = 1;

	return 0;
}