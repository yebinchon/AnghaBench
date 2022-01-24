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
struct snd_pcm_substream {struct snd_pcm* pcm; } ;
struct snd_pcm_oss_file {struct snd_pcm_substream** streams; } ;
struct snd_pcm {TYPE_1__* card; int /*<<< orphan*/  open_wait; int /*<<< orphan*/  open_mutex; } ;
struct inode {int dummy; } ;
struct file {struct snd_pcm_oss_file* private_data; } ;
struct TYPE_2__ {int /*<<< orphan*/  module; int /*<<< orphan*/  shutdown; } ;

/* Variables and functions */
 int ENXIO ; 
 size_t SNDRV_PCM_STREAM_CAPTURE ; 
 size_t SNDRV_PCM_STREAM_PLAYBACK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,struct file*) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_pcm_oss_file*) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_pcm_oss_file*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct inode *inode, struct file *file)
{
	struct snd_pcm *pcm;
	struct snd_pcm_substream *substream;
	struct snd_pcm_oss_file *pcm_oss_file;

	pcm_oss_file = file->private_data;
	substream = pcm_oss_file->streams[SNDRV_PCM_STREAM_PLAYBACK];
	if (substream == NULL)
		substream = pcm_oss_file->streams[SNDRV_PCM_STREAM_CAPTURE];
	if (FUNC3(!substream))
		return -ENXIO;
	pcm = substream->pcm;
	if (!pcm->card->shutdown)
		FUNC6(pcm_oss_file);
	FUNC1(&pcm->open_mutex);
	FUNC5(pcm_oss_file);
	FUNC2(&pcm->open_mutex);
	FUNC7(&pcm->open_wait);
	FUNC0(pcm->card->module);
	FUNC4(pcm->card, file);
	return 0;
}