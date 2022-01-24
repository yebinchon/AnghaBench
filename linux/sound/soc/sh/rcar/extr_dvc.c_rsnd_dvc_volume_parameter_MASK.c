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
typedef  int /*<<< orphan*/  u32 ;
struct rsnd_mod {int dummy; } ;
struct rsnd_dvc {int /*<<< orphan*/  volume; int /*<<< orphan*/  ren; } ;
struct rsnd_dai_stream {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int RSND_MAX_CHANNELS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 struct rsnd_dvc* FUNC4 (struct rsnd_mod*) ; 
 int /*<<< orphan*/  FUNC5 (struct rsnd_mod*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct rsnd_dai_stream *io,
					      struct rsnd_mod *mod)
{
	struct rsnd_dvc *dvc = FUNC4(mod);
	u32 val[RSND_MAX_CHANNELS];
	int i;

	/* Enable Ramp */
	if (FUNC3(dvc->ren))
		for (i = 0; i < RSND_MAX_CHANNELS; i++)
			val[i] = FUNC1(dvc->volume);
	else
		for (i = 0; i < RSND_MAX_CHANNELS; i++)
			val[i] = FUNC2(dvc->volume, i);

	/* Enable Digital Volume */
	for (i = 0; i < RSND_MAX_CHANNELS; i++)
		FUNC5(mod, FUNC0(i), val[i]);
}