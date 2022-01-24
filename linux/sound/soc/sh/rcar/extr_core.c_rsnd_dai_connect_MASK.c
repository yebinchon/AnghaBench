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
struct rsnd_priv {int dummy; } ;
struct rsnd_mod {int dummy; } ;
struct rsnd_dai_stream {struct rsnd_mod** mod; } ;
struct device {int dummy; } ;
typedef  enum rsnd_mod_type { ____Placeholder_rsnd_mod_type } rsnd_mod_type ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (struct rsnd_dai_stream*) ; 
 int /*<<< orphan*/  FUNC2 (struct rsnd_mod*) ; 
 struct rsnd_priv* FUNC3 (struct rsnd_mod*) ; 
 struct device* FUNC4 (struct rsnd_priv*) ; 

int FUNC5(struct rsnd_mod *mod,
		     struct rsnd_dai_stream *io,
		     enum rsnd_mod_type type)
{
	struct rsnd_priv *priv;
	struct device *dev;

	if (!mod)
		return -EIO;

	if (io->mod[type] == mod)
		return 0;

	if (io->mod[type])
		return -EINVAL;

	priv = FUNC3(mod);
	dev = FUNC4(priv);

	io->mod[type] = mod;

	FUNC0(dev, "%s is connected to io (%s)\n",
		FUNC2(mod),
		FUNC1(io) ? "Playback" : "Capture");

	return 0;
}