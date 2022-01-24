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
struct rsnd_priv {int /*<<< orphan*/  lock; } ;
struct rsnd_mod {int dummy; } ;
struct rsnd_dai_stream {int /*<<< orphan*/  substream; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rsnd_dai_stream*) ; 
 struct rsnd_priv* FUNC1 (struct rsnd_mod*) ; 
 scalar_t__ FUNC2 (struct rsnd_mod*) ; 
 int /*<<< orphan*/  FUNC3 (struct rsnd_mod*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct rsnd_mod *mod,
				 struct rsnd_dai_stream *io)
{
	struct rsnd_priv *priv = FUNC1(mod);
	bool stop = false;

	FUNC5(&priv->lock);

	/* ignore all cases if not working */
	if (!FUNC0(io))
		goto rsnd_src_interrupt_out;

	if (FUNC2(mod))
		stop = true;

	FUNC3(mod);
rsnd_src_interrupt_out:

	FUNC6(&priv->lock);

	if (stop)
		FUNC4(io->substream);
}