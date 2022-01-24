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
struct snd_pcm_hw_params {int dummy; } ;
struct rsnd_dai_stream {int dummy; } ;
struct rsnd_dai {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct rsnd_dai_stream*) ; 
 struct rsnd_dai* FUNC2 (struct rsnd_dai_stream*) ; 
 int FUNC3 (struct rsnd_dai*) ; 
 int FUNC4 (struct rsnd_dai_stream*,struct snd_pcm_hw_params*) ; 
 int FUNC5 (struct rsnd_dai_stream*,struct snd_pcm_hw_params*) ; 
 scalar_t__ FUNC6 (struct rsnd_dai_stream*) ; 

int FUNC7(struct rsnd_dai_stream *io,
					     struct snd_pcm_hw_params *params)
{
	struct rsnd_dai *rdai = FUNC2(io);
	int chan = FUNC1(io) ?
		FUNC4(io, params) :
		FUNC5(io, params);

	/* Use Multi SSI */
	if (FUNC6(io))
		chan /= FUNC3(rdai);

	return FUNC0(chan);
}