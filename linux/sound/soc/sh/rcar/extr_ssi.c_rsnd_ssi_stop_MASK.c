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
struct rsnd_ssi {int cr_own; int cr_clk; scalar_t__ cr_en; } ;
struct rsnd_priv {int dummy; } ;
struct rsnd_mod {int dummy; } ;
struct rsnd_dai_stream {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DIRQ ; 
 int EN ; 
 int /*<<< orphan*/  IIRQ ; 
 int /*<<< orphan*/  SSICR ; 
 scalar_t__ FUNC0 (struct rsnd_dai_stream*) ; 
 struct rsnd_ssi* FUNC1 (struct rsnd_mod*) ; 
 int /*<<< orphan*/  FUNC2 (struct rsnd_mod*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (struct rsnd_mod*,struct rsnd_dai_stream*) ; 
 int /*<<< orphan*/  FUNC4 (struct rsnd_mod*,struct rsnd_dai_stream*) ; 
 int /*<<< orphan*/  FUNC5 (struct rsnd_mod*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct rsnd_mod *mod,
			 struct rsnd_dai_stream *io,
			 struct rsnd_priv *priv)
{
	struct rsnd_ssi *ssi = FUNC1(mod);
	u32 cr;

	if (!FUNC4(mod, io))
		return 0;

	if (FUNC3(mod, io))
		return 0;

	cr  =	ssi->cr_own	|
		ssi->cr_clk;

	/*
	 * disable all IRQ,
	 * Playback: Wait all data was sent
	 * Capture:  It might not receave data. Do nothing
	 */
	if (FUNC0(io)) {
		FUNC2(mod, SSICR, cr | EN);
		FUNC5(mod, DIRQ);
	}

	/*
	 * disable SSI,
	 * and, wait idle state
	 */
	FUNC2(mod, SSICR, cr);	/* disabled all */
	FUNC5(mod, IIRQ);

	ssi->cr_en = 0;

	return 0;
}