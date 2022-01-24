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
struct snd_pcm_runtime {size_t buffer_size; } ;
struct snd_ice1712 {scalar_t__ ddma_port; } ;
typedef  size_t snd_pcm_uframes_t ;

/* Variables and functions */
 int /*<<< orphan*/  ICE1712_IREG_PBK_CTRL ; 
 size_t FUNC0 (struct snd_pcm_runtime*,size_t) ; 
 size_t FUNC1 (scalar_t__) ; 
 int FUNC2 (struct snd_ice1712*,int /*<<< orphan*/ ) ; 
 struct snd_ice1712* FUNC3 (struct snd_pcm_substream*) ; 

__attribute__((used)) static snd_pcm_uframes_t FUNC4(struct snd_pcm_substream *substream)
{
	struct snd_ice1712 *ice = FUNC3(substream);
	struct snd_pcm_runtime *runtime = substream->runtime;
	size_t ptr;

	if (!(FUNC2(ice, ICE1712_IREG_PBK_CTRL) & 1))
		return 0;
	ptr = runtime->buffer_size - FUNC1(ice->ddma_port + 4);
	ptr = FUNC0(substream->runtime, ptr);
	if (ptr == runtime->buffer_size)
		ptr = 0;
	return ptr;
}