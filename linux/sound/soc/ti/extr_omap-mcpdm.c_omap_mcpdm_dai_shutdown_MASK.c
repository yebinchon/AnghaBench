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
struct snd_soc_dai {int /*<<< orphan*/  active; } ;
struct snd_pcm_substream {int stream; } ;
struct omap_mcpdm {int /*<<< orphan*/  mutex; scalar_t__* latency; int /*<<< orphan*/  pm_qos_req; TYPE_1__* config; } ;
struct TYPE_2__ {scalar_t__ link_mask; } ;

/* Variables and functions */
 int SNDRV_PCM_STREAM_CAPTURE ; 
 int SNDRV_PCM_STREAM_PLAYBACK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct omap_mcpdm*) ; 
 int /*<<< orphan*/  FUNC3 (struct omap_mcpdm*) ; 
 int /*<<< orphan*/  FUNC4 (struct omap_mcpdm*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,scalar_t__) ; 
 struct omap_mcpdm* FUNC7 (struct snd_soc_dai*) ; 

__attribute__((used)) static void FUNC8(struct snd_pcm_substream *substream,
				  struct snd_soc_dai *dai)
{
	struct omap_mcpdm *mcpdm = FUNC7(dai);
	int tx = (substream->stream == SNDRV_PCM_STREAM_PLAYBACK);
	int stream1 = tx ? SNDRV_PCM_STREAM_PLAYBACK : SNDRV_PCM_STREAM_CAPTURE;
	int stream2 = tx ? SNDRV_PCM_STREAM_CAPTURE : SNDRV_PCM_STREAM_PLAYBACK;

	FUNC0(&mcpdm->mutex);

	if (!dai->active) {
		if (FUNC2(mcpdm)) {
			FUNC4(mcpdm);
			FUNC3(mcpdm);
			mcpdm->config[0].link_mask = 0;
			mcpdm->config[1].link_mask = 0;
		}
	}

	if (mcpdm->latency[stream2])
		FUNC6(&mcpdm->pm_qos_req,
				      mcpdm->latency[stream2]);
	else if (mcpdm->latency[stream1])
		FUNC5(&mcpdm->pm_qos_req);

	mcpdm->latency[stream1] = 0;

	FUNC1(&mcpdm->mutex);
}