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
struct snd_pcm {int /*<<< orphan*/  info_flags; int /*<<< orphan*/  name; struct hdspm* private_data; } ;
struct snd_card {int dummy; } ;
struct hdspm {int /*<<< orphan*/  card_name; struct snd_pcm* pcm; } ;

/* Variables and functions */
 int /*<<< orphan*/  SNDRV_PCM_INFO_JOINT_DUPLEX ; 
 int /*<<< orphan*/  SNDRV_PCM_STREAM_CAPTURE ; 
 int /*<<< orphan*/  SNDRV_PCM_STREAM_PLAYBACK ; 
 int /*<<< orphan*/  snd_hdspm_ops ; 
 int FUNC0 (struct hdspm*) ; 
 int FUNC1 (struct snd_card*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,struct snd_pcm**) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_pcm*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct snd_card *card,
				struct hdspm *hdspm)
{
	struct snd_pcm *pcm;
	int err;

	err = FUNC1(card, hdspm->card_name, 0, 1, 1, &pcm);
	if (err < 0)
		return err;

	hdspm->pcm = pcm;
	pcm->private_data = hdspm;
	FUNC3(pcm->name, hdspm->card_name);

	FUNC2(pcm, SNDRV_PCM_STREAM_PLAYBACK,
			&snd_hdspm_ops);
	FUNC2(pcm, SNDRV_PCM_STREAM_CAPTURE,
			&snd_hdspm_ops);

	pcm->info_flags = SNDRV_PCM_INFO_JOINT_DUPLEX;

	err = FUNC0(hdspm);
	if (err < 0)
		return err;

	return 0;
}