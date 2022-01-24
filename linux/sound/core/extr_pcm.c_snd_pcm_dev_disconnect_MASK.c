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
struct snd_pcm_substream {TYPE_2__* runtime; struct snd_pcm_substream* next; } ;
struct snd_pcm {int /*<<< orphan*/  open_mutex; TYPE_3__* streams; int /*<<< orphan*/  list; int /*<<< orphan*/  open_wait; } ;
struct snd_device {struct snd_pcm* device_data; } ;
struct TYPE_6__ {int /*<<< orphan*/  dev; struct snd_pcm_substream* substream; } ;
struct TYPE_5__ {int /*<<< orphan*/  tsleep; int /*<<< orphan*/  sleep; TYPE_1__* status; } ;
struct TYPE_4__ {int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  SNDRV_PCM_STATE_DISCONNECTED ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  n_disconnect ; 
 int /*<<< orphan*/  FUNC4 (struct snd_pcm*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  register_mutex ; 
 scalar_t__ FUNC5 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_pcm_substream*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC8 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(struct snd_device *device)
{
	struct snd_pcm *pcm = device->device_data;
	struct snd_pcm_substream *substream;
	int cidx;

	FUNC2(&register_mutex);
	FUNC2(&pcm->open_mutex);
	FUNC10(&pcm->open_wait);
	FUNC1(&pcm->list);
	for (cidx = 0; cidx < 2; cidx++) {
		for (substream = pcm->streams[cidx].substream; substream; substream = substream->next) {
			FUNC7(substream);
			if (substream->runtime) {
				if (FUNC5(substream))
					FUNC6(substream,
						     SNDRV_PCM_STATE_DISCONNECTED);
				/* to be sure, set the state unconditionally */
				substream->runtime->status->state = SNDRV_PCM_STATE_DISCONNECTED;
				FUNC10(&substream->runtime->sleep);
				FUNC10(&substream->runtime->tsleep);
			}
			FUNC8(substream);
		}
	}

	FUNC4(pcm, n_disconnect);
	for (cidx = 0; cidx < 2; cidx++) {
		FUNC9(&pcm->streams[cidx].dev);
		FUNC0(&pcm->streams[cidx]);
	}
	FUNC3(&pcm->open_mutex);
	FUNC3(&register_mutex);
	return 0;
}