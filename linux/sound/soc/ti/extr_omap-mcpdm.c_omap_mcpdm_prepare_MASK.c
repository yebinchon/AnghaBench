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
struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {int stream; } ;
struct pm_qos_request {int dummy; } ;
struct omap_mcpdm {int* latency; int restart; struct pm_qos_request pm_qos_req; } ;

/* Variables and functions */
 int /*<<< orphan*/  PM_QOS_CPU_DMA_LATENCY ; 
 int SNDRV_PCM_STREAM_CAPTURE ; 
 int SNDRV_PCM_STREAM_PLAYBACK ; 
 int /*<<< orphan*/  FUNC0 (struct omap_mcpdm*) ; 
 int /*<<< orphan*/  FUNC1 (struct omap_mcpdm*) ; 
 int /*<<< orphan*/  FUNC2 (struct omap_mcpdm*) ; 
 int /*<<< orphan*/  FUNC3 (struct omap_mcpdm*) ; 
 int /*<<< orphan*/  FUNC4 (struct pm_qos_request*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (struct pm_qos_request*) ; 
 int /*<<< orphan*/  FUNC6 (struct pm_qos_request*,int) ; 
 struct omap_mcpdm* FUNC7 (struct snd_soc_dai*) ; 

__attribute__((used)) static int FUNC8(struct snd_pcm_substream *substream,
				  struct snd_soc_dai *dai)
{
	struct omap_mcpdm *mcpdm = FUNC7(dai);
	struct pm_qos_request *pm_qos_req = &mcpdm->pm_qos_req;
	int tx = (substream->stream == SNDRV_PCM_STREAM_PLAYBACK);
	int stream1 = tx ? SNDRV_PCM_STREAM_PLAYBACK : SNDRV_PCM_STREAM_CAPTURE;
	int stream2 = tx ? SNDRV_PCM_STREAM_CAPTURE : SNDRV_PCM_STREAM_PLAYBACK;
	int latency = mcpdm->latency[stream2];

	/* Prevent omap hardware from hitting off between FIFO fills */
	if (!latency || mcpdm->latency[stream1] < latency)
		latency = mcpdm->latency[stream1];

	if (FUNC5(pm_qos_req))
		FUNC6(pm_qos_req, latency);
	else if (latency)
		FUNC4(pm_qos_req, PM_QOS_CPU_DMA_LATENCY, latency);

	if (!FUNC0(mcpdm)) {
		FUNC2(mcpdm);
		FUNC1(mcpdm);
	} else if (mcpdm->restart) {
		FUNC3(mcpdm);
		FUNC2(mcpdm);
		mcpdm->restart = false;
		FUNC1(mcpdm);
	}

	return 0;
}