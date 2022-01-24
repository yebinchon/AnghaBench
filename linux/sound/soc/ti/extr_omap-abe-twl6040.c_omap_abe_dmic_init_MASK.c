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
struct snd_soc_pcm_runtime {TYPE_1__* card; } ;
struct snd_soc_dapm_context {int dummy; } ;
struct TYPE_2__ {struct snd_soc_dapm_context dapm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dmic_audio_map ; 
 int FUNC1 (struct snd_soc_dapm_context*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct snd_soc_pcm_runtime *rtd)
{
	struct snd_soc_dapm_context *dapm = &rtd->card->dapm;

	return FUNC1(dapm, dmic_audio_map,
				FUNC0(dmic_audio_map));
}