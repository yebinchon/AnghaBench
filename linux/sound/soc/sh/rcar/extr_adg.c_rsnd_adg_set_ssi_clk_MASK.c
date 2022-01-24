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
struct rsnd_adg {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct rsnd_mod*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct rsnd_mod*) ; 
 struct rsnd_mod* FUNC4 (struct rsnd_adg*) ; 
 int FUNC5 (struct rsnd_mod*) ; 
 struct rsnd_priv* FUNC6 (struct rsnd_mod*) ; 
 struct rsnd_adg* FUNC7 (struct rsnd_priv*) ; 
 struct device* FUNC8 (struct rsnd_priv*) ; 

__attribute__((used)) static void FUNC9(struct rsnd_mod *ssi_mod, u32 val)
{
	struct rsnd_priv *priv = FUNC6(ssi_mod);
	struct rsnd_adg *adg = FUNC7(priv);
	struct rsnd_mod *adg_mod = FUNC4(adg);
	struct device *dev = FUNC8(priv);
	int id = FUNC5(ssi_mod);
	int shift = (id % 4) * 8;
	u32 mask = 0xFF << shift;

	FUNC3(ssi_mod);

	val = val << shift;

	/*
	 * SSI 8 is not connected to ADG.
	 * it works with SSI 7
	 */
	if (id == 8)
		return;

	FUNC2(adg_mod, FUNC0(id / 4), mask, val);

	FUNC1(dev, "AUDIO_CLK_SEL is 0x%x\n", val);
}