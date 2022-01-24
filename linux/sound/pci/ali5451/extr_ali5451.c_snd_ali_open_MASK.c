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
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_hardware {int dummy; } ;
struct snd_pcm_runtime {struct snd_pcm_hardware hw; int /*<<< orphan*/  private_free; struct snd_ali_voice* private_data; } ;
struct snd_ali_voice {struct snd_pcm_substream* substream; } ;
struct snd_ali {int dummy; } ;

/* Variables and functions */
 int EAGAIN ; 
 int /*<<< orphan*/  SNDRV_ALI_VOICE_TYPE_PCM ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_BUFFER_SIZE ; 
 struct snd_ali_voice* FUNC0 (struct snd_ali*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  snd_ali_pcm_free_substream ; 
 int /*<<< orphan*/  FUNC1 (struct snd_pcm_runtime*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_pcm_substream*) ; 
 struct snd_ali* FUNC3 (struct snd_pcm_substream*) ; 

__attribute__((used)) static int FUNC4(struct snd_pcm_substream *substream, int rec,
			int channel, struct snd_pcm_hardware *phw)
{
	struct snd_ali *codec = FUNC3(substream);
	struct snd_pcm_runtime *runtime = substream->runtime;
	struct snd_ali_voice *pvoice;

	pvoice = FUNC0(codec, SNDRV_ALI_VOICE_TYPE_PCM, rec,
				     channel);
	if (!pvoice)
		return -EAGAIN;

	pvoice->substream = substream;
	runtime->private_data = pvoice;
	runtime->private_free = snd_ali_pcm_free_substream;

	runtime->hw = *phw;
	FUNC2(substream);
	FUNC1(runtime, SNDRV_PCM_HW_PARAM_BUFFER_SIZE,
				     0, 64*1024);
	return 0;
}