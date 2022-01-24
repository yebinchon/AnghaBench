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
struct rsnd_mod {int /*<<< orphan*/ * ops; } ;
struct rsnd_dai_stream {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rsnd_mod*) ; 
 struct device* FUNC2 (struct rsnd_priv*) ; 
 int /*<<< orphan*/  rsnd_ssi_pio_ops ; 

__attribute__((used)) static int FUNC3(struct rsnd_mod *mod,
			     struct rsnd_dai_stream *io,
			     struct rsnd_priv *priv)
{
	struct device *dev = FUNC2(priv);

	/*
	 * fallback to PIO
	 *
	 * SSI .probe might be called again.
	 * see
	 *	rsnd_rdai_continuance_probe()
	 */
	mod->ops = &rsnd_ssi_pio_ops;

	FUNC0(dev, "%s fallback to PIO mode\n", FUNC1(mod));

	return 0;
}