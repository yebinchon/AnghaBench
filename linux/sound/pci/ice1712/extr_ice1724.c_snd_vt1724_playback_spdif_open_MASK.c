#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int /*<<< orphan*/  hw; void* private_data; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* open ) (struct snd_ice1712*,struct snd_pcm_substream*) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct snd_ice1712 {TYPE_2__ spdif; scalar_t__ force_pdma4; struct snd_pcm_substream* playback_con_substream; } ;

/* Variables and functions */
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_BUFFER_BYTES ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_PERIOD_BYTES ; 
 int /*<<< orphan*/  VT1724_BUFFER_ALIGN ; 
 int /*<<< orphan*/  FUNC0 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_ice1712*,struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_pcm_runtime*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_pcm_runtime*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_pcm_substream*) ; 
 struct snd_ice1712* FUNC5 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  snd_vt1724_2ch_stereo ; 
 int /*<<< orphan*/  snd_vt1724_spdif ; 
 int /*<<< orphan*/  FUNC6 (struct snd_ice1712*,struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  vt1724_playback_spdif_reg ; 

__attribute__((used)) static int FUNC7(struct snd_pcm_substream *substream)
{
	struct snd_ice1712 *ice = FUNC5(substream);
	struct snd_pcm_runtime *runtime = substream->runtime;

	runtime->private_data = (void *)&vt1724_playback_spdif_reg;
	ice->playback_con_substream = substream;
	if (ice->force_pdma4) {
		runtime->hw = snd_vt1724_2ch_stereo;
		FUNC1(ice, substream);
	} else
		runtime->hw = snd_vt1724_spdif;
	FUNC4(substream);
	FUNC2(runtime, 0, 32, 24);
	FUNC3(runtime, 0, SNDRV_PCM_HW_PARAM_PERIOD_BYTES,
				   VT1724_BUFFER_ALIGN);
	FUNC3(runtime, 0, SNDRV_PCM_HW_PARAM_BUFFER_BYTES,
				   VT1724_BUFFER_ALIGN);
	FUNC0(substream);
	if (ice->spdif.ops.open)
		ice->spdif.ops.open(ice, substream);
	return 0;
}