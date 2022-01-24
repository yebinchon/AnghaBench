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
struct rsnd_mod {int dummy; } ;
struct rsnd_mix {int /*<<< orphan*/  rdw; int /*<<< orphan*/  rup; int /*<<< orphan*/  ren; } ;
struct rsnd_dai_stream {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MIX_ADINR ; 
 int /*<<< orphan*/  MIX_MIXIR ; 
 int /*<<< orphan*/  MIX_MIXMR ; 
 int /*<<< orphan*/  MIX_MVPDR ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rsnd_dai_stream*,struct rsnd_mod*) ; 
 struct rsnd_mix* FUNC2 (struct rsnd_mod*) ; 
 int /*<<< orphan*/  FUNC3 (struct rsnd_mod*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct rsnd_dai_stream*) ; 

__attribute__((used)) static void FUNC5(struct rsnd_dai_stream *io,
				 struct rsnd_mod *mod)
{
	struct rsnd_mix *mix = FUNC2(mod);

	FUNC3(mod, MIX_MIXIR, 1);

	/* General Information */
	FUNC3(mod, MIX_ADINR, FUNC4(io));

	/* volume step */
	FUNC3(mod, MIX_MIXMR, FUNC0(mix->ren));
	FUNC3(mod, MIX_MVPDR, FUNC0(mix->rup) << 8 |
				       FUNC0(mix->rdw));

	/* common volume parameter */
	FUNC1(io, mod);

	FUNC3(mod, MIX_MIXIR, 0);
}