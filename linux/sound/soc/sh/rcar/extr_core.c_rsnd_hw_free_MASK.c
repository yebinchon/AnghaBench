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
struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {int dummy; } ;
struct rsnd_dai_stream {int dummy; } ;
struct rsnd_dai {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  hw_free ; 
 int FUNC0 (int /*<<< orphan*/ ,struct rsnd_dai_stream*,struct snd_pcm_substream*) ; 
 struct rsnd_dai* FUNC1 (struct snd_soc_dai*) ; 
 struct rsnd_dai_stream* FUNC2 (struct rsnd_dai*,struct snd_pcm_substream*) ; 
 struct snd_soc_dai* FUNC3 (struct snd_pcm_substream*) ; 
 int FUNC4 (struct snd_pcm_substream*) ; 

__attribute__((used)) static int FUNC5(struct snd_pcm_substream *substream)
{
	struct snd_soc_dai *dai = FUNC3(substream);
	struct rsnd_dai *rdai = FUNC1(dai);
	struct rsnd_dai_stream *io = FUNC2(rdai, substream);
	int ret;

	ret = FUNC0(hw_free, io, substream);
	if (ret)
		return ret;

	return FUNC4(substream);
}