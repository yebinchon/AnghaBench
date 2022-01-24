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
struct snd_pcm_runtime {int dummy; } ;
struct snd_korg1212 {int channels; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct snd_pcm_runtime*,unsigned long) ; 
 int FUNC1 (struct snd_korg1212*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct snd_korg1212* FUNC2 (struct snd_pcm_substream*) ; 

__attribute__((used)) static int FUNC3(struct snd_pcm_substream *substream,
                           int channel, /* not used (interleaved data) */
                           unsigned long pos,
                           unsigned long count)
{
	struct snd_pcm_runtime *runtime = substream->runtime;
        struct snd_korg1212 *korg1212 = FUNC2(substream);

	return FUNC1(korg1212, FUNC0(runtime, pos),
				    FUNC0(runtime, count),
				    0, korg1212->channels * 2);
}