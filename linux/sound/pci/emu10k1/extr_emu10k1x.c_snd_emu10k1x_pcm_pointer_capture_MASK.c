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
struct snd_pcm_runtime {scalar_t__ buffer_size; struct emu10k1x_pcm* private_data; } ;
struct emu10k1x_pcm {int /*<<< orphan*/  running; } ;
struct emu10k1x {int dummy; } ;
typedef  scalar_t__ snd_pcm_uframes_t ;

/* Variables and functions */
 int /*<<< orphan*/  CAPTURE_POINTER ; 
 scalar_t__ FUNC0 (struct snd_pcm_runtime*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct emu10k1x*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct emu10k1x* FUNC2 (struct snd_pcm_substream*) ; 

__attribute__((used)) static snd_pcm_uframes_t
FUNC3(struct snd_pcm_substream *substream)
{
	struct emu10k1x *emu = FUNC2(substream);
	struct snd_pcm_runtime *runtime = substream->runtime;
	struct emu10k1x_pcm *epcm = runtime->private_data;
	snd_pcm_uframes_t ptr;

	if (!epcm->running)
		return 0;

	ptr = FUNC0(runtime, FUNC1(emu, CAPTURE_POINTER, 0));
	if (ptr >= runtime->buffer_size)
		ptr -= runtime->buffer_size;

	return ptr;
}