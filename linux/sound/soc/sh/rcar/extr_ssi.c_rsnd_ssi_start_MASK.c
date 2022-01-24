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
struct rsnd_ssi {int cr_en; int cr_own; int cr_clk; int cr_mode; } ;
struct rsnd_priv {int dummy; } ;
struct rsnd_mod {int dummy; } ;
struct rsnd_dai_stream {int dummy; } ;

/* Variables and functions */
 int EN ; 
 int /*<<< orphan*/  SSICR ; 
 struct rsnd_ssi* FUNC0 (struct rsnd_mod*) ; 
 int /*<<< orphan*/  FUNC1 (struct rsnd_mod*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (struct rsnd_mod*,struct rsnd_dai_stream*) ; 
 int /*<<< orphan*/  FUNC3 (struct rsnd_mod*,struct rsnd_dai_stream*) ; 
 scalar_t__ FUNC4 (struct rsnd_dai_stream*) ; 

__attribute__((used)) static int FUNC5(struct rsnd_mod *mod,
			  struct rsnd_dai_stream *io,
			  struct rsnd_priv *priv)
{
	struct rsnd_ssi *ssi = FUNC0(mod);

	if (!FUNC3(mod, io))
		return 0;

	/*
	 * EN will be set via SSIU :: SSI_CONTROL
	 * if Multi channel mode
	 */
	if (FUNC4(io))
		return 0;

	/*
	 * EN is for data output.
	 * SSI parent EN is not needed.
	 */
	if (FUNC2(mod, io))
		return 0;

	ssi->cr_en = EN;

	FUNC1(mod, SSICR,	ssi->cr_own	|
					ssi->cr_clk	|
					ssi->cr_mode	|
					ssi->cr_en);

	return 0;
}