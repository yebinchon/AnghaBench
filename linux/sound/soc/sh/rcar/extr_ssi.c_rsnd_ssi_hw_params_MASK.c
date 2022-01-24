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
struct snd_pcm_substream {int dummy; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct rsnd_priv {int dummy; } ;
struct rsnd_mod {int dummy; } ;
struct rsnd_dai_stream {int dummy; } ;
struct rsnd_dai {unsigned int chan_width; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_pcm_hw_params*) ; 
 struct rsnd_priv* FUNC2 (struct rsnd_dai_stream*) ; 
 struct rsnd_dai* FUNC3 (struct rsnd_dai_stream*) ; 
 struct device* FUNC4 (struct rsnd_priv*) ; 
 unsigned int FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct rsnd_mod *mod,
			      struct rsnd_dai_stream *io,
			      struct snd_pcm_substream *substream,
			      struct snd_pcm_hw_params *params)
{
	struct rsnd_dai *rdai = FUNC3(io);
	unsigned int fmt_width = FUNC5(FUNC1(params));

	if (fmt_width > rdai->chan_width) {
		struct rsnd_priv *priv = FUNC2(io);
		struct device *dev = FUNC4(priv);

		FUNC0(dev, "invalid combination of slot-width and format-data-width\n");
		return -EINVAL;
	}

	return 0;
}