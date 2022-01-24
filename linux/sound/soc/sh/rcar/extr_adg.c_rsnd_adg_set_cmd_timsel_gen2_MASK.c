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
struct rsnd_priv {int dummy; } ;
struct rsnd_mod {int dummy; } ;
struct rsnd_dai_stream {int dummy; } ;
struct rsnd_adg {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMDOUT_TIMSEL ; 
 int /*<<< orphan*/  FUNC0 (struct rsnd_priv*,struct rsnd_dai_stream*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct rsnd_mod*,int /*<<< orphan*/ ,int,int) ; 
 struct rsnd_mod* FUNC2 (struct rsnd_adg*) ; 
 int FUNC3 (struct rsnd_mod*) ; 
 struct rsnd_priv* FUNC4 (struct rsnd_mod*) ; 
 struct rsnd_adg* FUNC5 (struct rsnd_priv*) ; 
 int /*<<< orphan*/  FUNC6 (struct rsnd_priv*,struct rsnd_dai_stream*) ; 
 int /*<<< orphan*/  FUNC7 (struct rsnd_priv*,struct rsnd_dai_stream*) ; 

int FUNC8(struct rsnd_mod *cmd_mod,
				 struct rsnd_dai_stream *io)
{
	struct rsnd_priv *priv = FUNC4(cmd_mod);
	struct rsnd_adg *adg = FUNC5(priv);
	struct rsnd_mod *adg_mod = FUNC2(adg);
	int id = FUNC3(cmd_mod);
	int shift = (id % 2) ? 16 : 0;
	u32 mask, val;

	FUNC0(priv, io,
				   FUNC6(priv, io),
				   FUNC7(priv, io),
				   NULL, &val, NULL);

	val  = val	<< shift;
	mask = 0x0f1f	<< shift;

	FUNC1(adg_mod, CMDOUT_TIMSEL, mask, val);

	return 0;
}