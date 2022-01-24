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
struct snd_pcm_runtime {int channels; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct rsnd_dai_stream {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct snd_pcm_hw_params*) ; 
 struct snd_pcm_runtime* FUNC1 (struct rsnd_dai_stream*) ; 

int FUNC2(struct rsnd_dai_stream *io,
					      struct snd_pcm_hw_params *params)
{
	struct snd_pcm_runtime *runtime = FUNC1(io);

	/*
	 * params will be added when refine
	 * see
	 *	__rsnd_soc_hw_rule_rate()
	 *	__rsnd_soc_hw_rule_channels()
	 */
	if (params)
		return FUNC0(params);
	else
		return runtime->channels;
}