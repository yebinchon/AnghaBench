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
struct snd_pcm_substream {size_t number; struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int /*<<< orphan*/  hw; void* private_data; } ;
struct snd_ice1712 {struct snd_pcm_substream** playback_con_substream_ds; int /*<<< orphan*/  open_mutex; scalar_t__* pcm_reserved; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_ice1712*,struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_pcm_runtime*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_pcm_substream*) ; 
 struct snd_ice1712* FUNC5 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  snd_vt1724_2ch_stereo ; 
 int /*<<< orphan*/ * vt1724_playback_dma_regs ; 

__attribute__((used)) static int FUNC6(struct snd_pcm_substream *substream)
{
	struct snd_ice1712 *ice = FUNC5(substream);
	struct snd_pcm_runtime *runtime = substream->runtime;

	FUNC0(&ice->open_mutex);
	/* already used by PDMA0? */
	if (ice->pcm_reserved[substream->number]) {
		FUNC1(&ice->open_mutex);
		return -EBUSY; /* FIXME: should handle blocking mode properly */
	}
	FUNC1(&ice->open_mutex);
	runtime->private_data = (void *)&vt1724_playback_dma_regs[substream->number];
	ice->playback_con_substream_ds[substream->number] = substream;
	runtime->hw = snd_vt1724_2ch_stereo;
	FUNC4(substream);
	FUNC3(runtime, 0, 32, 24);
	FUNC2(ice, substream);
	return 0;
}