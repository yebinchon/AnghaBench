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
struct rsnd_ssi {int /*<<< orphan*/  irq; } ;
struct rsnd_priv {int dummy; } ;
struct rsnd_mod {int dummy; } ;
struct rsnd_dai_stream {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  RSND_SSI_PROBED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct rsnd_mod*) ; 
 int /*<<< orphan*/  FUNC1 (struct rsnd_ssi*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct rsnd_ssi*,int /*<<< orphan*/ ) ; 
 struct rsnd_mod* FUNC3 (struct rsnd_dai_stream*) ; 
 struct rsnd_ssi* FUNC4 (struct rsnd_mod*) ; 

__attribute__((used)) static int FUNC5(struct rsnd_mod *mod,
				  struct rsnd_dai_stream *io,
				  struct rsnd_priv *priv)
{
	struct rsnd_ssi *ssi = FUNC4(mod);
	struct rsnd_mod *pure_ssi_mod = FUNC3(io);

	/* Do nothing if non SSI (= SSI parent, multi SSI) mod */
	if (pure_ssi_mod != mod)
		return 0;

	/* PIO will request IRQ again */
	if (FUNC2(ssi, RSND_SSI_PROBED)) {
		FUNC0(ssi->irq, mod);

		FUNC1(ssi, RSND_SSI_PROBED);
	}

	return 0;
}