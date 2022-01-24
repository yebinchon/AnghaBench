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
struct rsnd_mod {int dummy; } ;
struct rsnd_dvc {int /*<<< orphan*/  ren; } ;
struct rsnd_dai_stream {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DVC_ADINR ; 
 int /*<<< orphan*/  DVC_DVUCR ; 
 int /*<<< orphan*/  DVC_DVUIR ; 
 int /*<<< orphan*/  DVC_VRCTR ; 
 int /*<<< orphan*/  DVC_VRDBR ; 
 int /*<<< orphan*/  DVC_VRPDR ; 
 int FUNC0 (struct rsnd_dvc*) ; 
 int FUNC1 (struct rsnd_dvc*) ; 
 int /*<<< orphan*/  FUNC2 (struct rsnd_dai_stream*,struct rsnd_mod*) ; 
 int FUNC3 (struct rsnd_mod*,struct rsnd_dai_stream*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 struct rsnd_dvc* FUNC5 (struct rsnd_mod*) ; 
 int /*<<< orphan*/  FUNC6 (struct rsnd_mod*,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (struct rsnd_dai_stream*) ; 

__attribute__((used)) static void FUNC8(struct rsnd_dai_stream *io,
				 struct rsnd_mod *mod)
{
	struct rsnd_dvc *dvc = FUNC5(mod);
	u32 adinr = 0;
	u32 dvucr = 0;
	u32 vrctr = 0;
	u32 vrpdr = 0;
	u32 vrdbr = 0;

	adinr = FUNC3(mod, io) |
		FUNC7(io);

	/* Enable Digital Volume, Zero Cross Mute Mode */
	dvucr |= 0x101;

	/* Enable Ramp */
	if (FUNC4(dvc->ren)) {
		dvucr |= 0x10;

		/*
		 * FIXME !!
		 * use scale-downed Digital Volume
		 * as Volume Ramp
		 * 7F FFFF -> 3FF
		 */
		vrctr = 0xff;
		vrpdr = FUNC1(dvc);
		vrdbr = FUNC0(dvc);
	}

	/* Initialize operation */
	FUNC6(mod, DVC_DVUIR, 1);

	/* General Information */
	FUNC6(mod, DVC_ADINR, adinr);
	FUNC6(mod, DVC_DVUCR, dvucr);

	/* Volume Ramp Parameter */
	FUNC6(mod, DVC_VRCTR, vrctr);
	FUNC6(mod, DVC_VRPDR, vrpdr);
	FUNC6(mod, DVC_VRDBR, vrdbr);

	/* Digital Volume Function Parameter */
	FUNC2(io, mod);

	/* cancel operation */
	FUNC6(mod, DVC_DVUIR, 0);
}