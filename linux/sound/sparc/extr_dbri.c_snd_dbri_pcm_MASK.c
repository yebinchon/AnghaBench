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
struct snd_pcm {int /*<<< orphan*/  name; scalar_t__ info_flags; int /*<<< orphan*/  private_data; } ;
struct snd_card {int /*<<< orphan*/  shortname; int /*<<< orphan*/  private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  SNDRV_DMA_TYPE_CONTINUOUS ; 
 int /*<<< orphan*/  SNDRV_PCM_STREAM_CAPTURE ; 
 int /*<<< orphan*/  SNDRV_PCM_STREAM_PLAYBACK ; 
 int /*<<< orphan*/  snd_dbri_ops ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_pcm*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int FUNC2 (struct snd_card*,char*,int /*<<< orphan*/ ,int,int,struct snd_pcm**) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_pcm*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct snd_card *card)
{
	struct snd_pcm *pcm;
	int err;

	if ((err = FUNC2(card,
			       /* ID */		    "sun_dbri",
			       /* device */	    0,
			       /* playback count */ 1,
			       /* capture count */  1, &pcm)) < 0)
		return err;

	FUNC3(pcm, SNDRV_PCM_STREAM_PLAYBACK, &snd_dbri_ops);
	FUNC3(pcm, SNDRV_PCM_STREAM_CAPTURE, &snd_dbri_ops);

	pcm->private_data = card->private_data;
	pcm->info_flags = 0;
	FUNC4(pcm->name, card->shortname);

	FUNC1(pcm, SNDRV_DMA_TYPE_CONTINUOUS,
					      FUNC0(GFP_KERNEL),
					      64 * 1024, 64 * 1024);
	return 0;
}