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
struct snd_pcm_substream {struct snd_pcm_substream* next; } ;
struct snd_pcm {TYPE_1__* streams; int /*<<< orphan*/  list; int /*<<< orphan*/  device; int /*<<< orphan*/  card; } ;
struct snd_device {struct snd_pcm* device_data; } ;
struct TYPE_2__ {struct snd_pcm_substream* substream; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENXIO ; 
 int SNDRV_DEVICE_TYPE_PCM_CAPTURE ; 
 int SNDRV_DEVICE_TYPE_PCM_PLAYBACK ; 
#define  SNDRV_PCM_STREAM_CAPTURE 129 
#define  SNDRV_PCM_STREAM_PLAYBACK 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  n_register ; 
 int /*<<< orphan*/  FUNC3 (struct snd_pcm*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  register_mutex ; 
 scalar_t__ FUNC4 (int) ; 
 int FUNC5 (struct snd_pcm*) ; 
 int /*<<< orphan*/ * snd_pcm_f_ops ; 
 int /*<<< orphan*/  FUNC6 (struct snd_pcm_substream*) ; 
 int FUNC7 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct snd_pcm*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct snd_device *device)
{
	int cidx, err;
	struct snd_pcm_substream *substream;
	struct snd_pcm *pcm;

	if (FUNC4(!device || !device->device_data))
		return -ENXIO;
	pcm = device->device_data;

	FUNC1(&register_mutex);
	err = FUNC5(pcm);
	if (err)
		goto unlock;
	for (cidx = 0; cidx < 2; cidx++) {
		int devtype = -1;
		if (pcm->streams[cidx].substream == NULL)
			continue;
		switch (cidx) {
		case SNDRV_PCM_STREAM_PLAYBACK:
			devtype = SNDRV_DEVICE_TYPE_PCM_PLAYBACK;
			break;
		case SNDRV_PCM_STREAM_CAPTURE:
			devtype = SNDRV_DEVICE_TYPE_PCM_CAPTURE;
			break;
		}
		/* register pcm */
		err = FUNC7(devtype, pcm->card, pcm->device,
					  &snd_pcm_f_ops[cidx], pcm,
					  &pcm->streams[cidx].dev);
		if (err < 0) {
			FUNC0(&pcm->list);
			goto unlock;
		}

		for (substream = pcm->streams[cidx].substream; substream; substream = substream->next)
			FUNC6(substream);
	}

	FUNC3(pcm, n_register);

 unlock:
	FUNC2(&register_mutex);
	return err;
}