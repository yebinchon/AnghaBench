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
typedef  int u32 ;
struct snd_pcm_hw_params {int dummy; } ;
struct rsnd_mod {int dummy; } ;
struct rsnd_dai_stream {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 int FUNC1 (struct rsnd_dai_stream*) ; 
 struct rsnd_mod* FUNC2 (struct rsnd_dai_stream*) ; 
 int /*<<< orphan*/  FUNC3 (struct rsnd_dai_stream*) ; 
 struct device* FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct rsnd_dai_stream*,struct snd_pcm_hw_params*) ; 
 scalar_t__ FUNC6 (struct rsnd_dai_stream*) ; 

int FUNC7(struct rsnd_dai_stream *io,
					       struct snd_pcm_hw_params *params)
{
	int chan = FUNC5(io, params);
	struct rsnd_mod *ctu_mod = FUNC2(io);

	if (ctu_mod) {
		u32 converted_chan = FUNC1(io);

		/*
		 * !! Note !!
		 *
		 * converted_chan will be used for CTU,
		 * or TDM Split mode.
		 * User shouldn't use CTU with TDM Split mode.
		 */
		if (FUNC6(io)) {
			struct device *dev = FUNC4(FUNC3(io));

			FUNC0(dev, "CTU and TDM Split should be used\n");
		}

		if (converted_chan)
			return converted_chan;
	}

	return chan;
}