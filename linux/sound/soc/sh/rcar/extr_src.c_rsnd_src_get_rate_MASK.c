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
struct snd_pcm_runtime {unsigned int rate; } ;
struct rsnd_priv {int dummy; } ;
struct rsnd_mod {int dummy; } ;
struct rsnd_dai_stream {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct rsnd_dai_stream*) ; 
 struct rsnd_mod* FUNC1 (struct rsnd_dai_stream*) ; 
 struct snd_pcm_runtime* FUNC2 (struct rsnd_dai_stream*) ; 
 unsigned int FUNC3 (struct rsnd_dai_stream*,struct rsnd_mod*) ; 

unsigned int FUNC4(struct rsnd_priv *priv,
			       struct rsnd_dai_stream *io,
			       int is_in)
{
	struct rsnd_mod *src_mod = FUNC1(io);
	struct snd_pcm_runtime *runtime = FUNC2(io);
	unsigned int rate = 0;
	int is_play = FUNC0(io);

	/*
	 * Playback
	 * runtime_rate -> [SRC] -> convert_rate
	 *
	 * Capture
	 * convert_rate -> [SRC] -> runtime_rate
	 */

	if (is_play == is_in)
		return runtime->rate;

	/*
	 * return convert rate if SRC is used,
	 * otherwise, return runtime->rate as usual
	 */
	if (src_mod)
		rate = FUNC3(io, src_mod);

	if (!rate)
		rate = runtime->rate;

	return rate;
}