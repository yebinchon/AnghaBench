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
struct rsnd_dvc {int /*<<< orphan*/  ren; int /*<<< orphan*/  mute; } ;
struct rsnd_dai_stream {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DVC_DVUER ; 
 int /*<<< orphan*/  DVC_VRDBR ; 
 int /*<<< orphan*/  DVC_VRPDR ; 
 int /*<<< orphan*/  DVC_ZCMCR ; 
 int FUNC0 (struct rsnd_dvc*) ; 
 int FUNC1 (struct rsnd_dvc*) ; 
 int /*<<< orphan*/  FUNC2 (struct rsnd_dai_stream*,struct rsnd_mod*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 struct rsnd_dvc* FUNC6 (struct rsnd_mod*) ; 
 int /*<<< orphan*/  FUNC7 (struct rsnd_mod*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC8(struct rsnd_dai_stream *io,
				   struct rsnd_mod *mod)
{
	struct rsnd_dvc *dvc = FUNC6(mod);
	u32 zcmcr = 0;
	u32 vrpdr = 0;
	u32 vrdbr = 0;
	int i;

	for (i = 0; i < FUNC3(dvc->mute); i++)
		zcmcr |= (!!FUNC4(dvc->mute, i)) << i;

	if (FUNC5(dvc->ren)) {
		vrpdr = FUNC1(dvc);
		vrdbr = FUNC0(dvc);
	}

	/* Disable DVC Register access */
	FUNC7(mod, DVC_DVUER, 0);

	/* Zero Cross Mute Function */
	FUNC7(mod, DVC_ZCMCR, zcmcr);

	/* Volume Ramp Function */
	FUNC7(mod, DVC_VRPDR, vrpdr);
	FUNC7(mod, DVC_VRDBR, vrdbr);
	/* add DVC_VRWTR here */

	/* Digital Volume Function Parameter */
	FUNC2(io, mod);

	/* Enable DVC Register access */
	FUNC7(mod, DVC_DVUER, 1);
}