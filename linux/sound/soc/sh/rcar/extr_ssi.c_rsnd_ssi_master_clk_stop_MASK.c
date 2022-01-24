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
struct rsnd_ssi {int usrcnt; scalar_t__ chan; scalar_t__ rate; scalar_t__ cr_clk; } ;
struct rsnd_mod {int dummy; } ;
struct rsnd_dai_stream {int dummy; } ;
struct rsnd_dai {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rsnd_mod*) ; 
 struct rsnd_dai* FUNC1 (struct rsnd_dai_stream*) ; 
 struct rsnd_ssi* FUNC2 (struct rsnd_mod*) ; 
 int /*<<< orphan*/  FUNC3 (struct rsnd_dai*) ; 
 int /*<<< orphan*/  FUNC4 (struct rsnd_mod*) ; 

__attribute__((used)) static void FUNC5(struct rsnd_mod *mod,
				     struct rsnd_dai_stream *io)
{
	struct rsnd_dai *rdai = FUNC1(io);
	struct rsnd_ssi *ssi = FUNC2(mod);

	if (!FUNC3(rdai))
		return;

	if (!FUNC4(mod))
		return;

	if (ssi->usrcnt > 1)
		return;

	ssi->cr_clk	= 0;
	ssi->rate	= 0;
	ssi->chan	= 0;

	FUNC0(mod);
}