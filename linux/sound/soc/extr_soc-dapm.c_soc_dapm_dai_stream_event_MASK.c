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
struct snd_soc_dapm_widget {scalar_t__ id; int active; unsigned int is_ep; } ;
struct snd_soc_dai {struct snd_soc_dapm_widget* capture_widget; struct snd_soc_dapm_widget* playback_widget; } ;

/* Variables and functions */
 int SNDRV_PCM_STREAM_PLAYBACK ; 
 unsigned int SND_SOC_DAPM_EP_SINK ; 
 unsigned int SND_SOC_DAPM_EP_SOURCE ; 
#define  SND_SOC_DAPM_STREAM_PAUSE_PUSH 133 
#define  SND_SOC_DAPM_STREAM_PAUSE_RELEASE 132 
#define  SND_SOC_DAPM_STREAM_RESUME 131 
#define  SND_SOC_DAPM_STREAM_START 130 
#define  SND_SOC_DAPM_STREAM_STOP 129 
#define  SND_SOC_DAPM_STREAM_SUSPEND 128 
 int /*<<< orphan*/  FUNC0 (struct snd_soc_dapm_widget*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_soc_dapm_widget*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_soc_dapm_widget*) ; 
 scalar_t__ snd_soc_dapm_dai_in ; 

__attribute__((used)) static void FUNC3(struct snd_soc_dai *dai, int stream,
	int event)
{
	struct snd_soc_dapm_widget *w;
	unsigned int ep;

	if (stream == SNDRV_PCM_STREAM_PLAYBACK)
		w = dai->playback_widget;
	else
		w = dai->capture_widget;

	if (w) {
		FUNC0(w, "stream event");

		if (w->id == snd_soc_dapm_dai_in) {
			ep = SND_SOC_DAPM_EP_SOURCE;
			FUNC1(w);
		} else {
			ep = SND_SOC_DAPM_EP_SINK;
			FUNC2(w);
		}

		switch (event) {
		case SND_SOC_DAPM_STREAM_START:
			w->active = 1;
			w->is_ep = ep;
			break;
		case SND_SOC_DAPM_STREAM_STOP:
			w->active = 0;
			w->is_ep = 0;
			break;
		case SND_SOC_DAPM_STREAM_SUSPEND:
		case SND_SOC_DAPM_STREAM_RESUME:
		case SND_SOC_DAPM_STREAM_PAUSE_PUSH:
		case SND_SOC_DAPM_STREAM_PAUSE_RELEASE:
			break;
		}
	}
}