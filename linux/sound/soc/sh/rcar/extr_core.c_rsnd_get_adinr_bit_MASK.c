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
struct snd_pcm_runtime {int /*<<< orphan*/  format; } ;
struct rsnd_priv {int dummy; } ;
struct rsnd_mod {int dummy; } ;
struct rsnd_dai_stream {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 struct snd_pcm_runtime* FUNC1 (struct rsnd_dai_stream*) ; 
 struct rsnd_priv* FUNC2 (struct rsnd_mod*) ; 
 struct device* FUNC3 (struct rsnd_priv*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 

u32 FUNC5(struct rsnd_mod *mod, struct rsnd_dai_stream *io)
{
	struct rsnd_priv *priv = FUNC2(mod);
	struct snd_pcm_runtime *runtime = FUNC1(io);
	struct device *dev = FUNC3(priv);

	switch (FUNC4(runtime->format)) {
	case 8:
		return 16 << 16;
	case 16:
		return 8 << 16;
	case 24:
		return 0 << 16;
	}

	FUNC0(dev, "not supported sample bits\n");

	return 0;
}