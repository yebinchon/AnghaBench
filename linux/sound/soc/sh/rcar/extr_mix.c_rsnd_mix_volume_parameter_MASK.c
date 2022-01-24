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
struct rsnd_priv {int dummy; } ;
struct rsnd_mod {int dummy; } ;
struct rsnd_mix {int dummy; } ;
struct rsnd_dai_stream {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  A ; 
 int /*<<< orphan*/  B ; 
 int /*<<< orphan*/  C ; 
 int /*<<< orphan*/  D ; 
 int /*<<< orphan*/  MIX_MDBAR ; 
 int /*<<< orphan*/  MIX_MDBBR ; 
 int /*<<< orphan*/  MIX_MDBCR ; 
 int /*<<< orphan*/  MIX_MDBDR ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rsnd_mix*,int /*<<< orphan*/ ) ; 
 struct rsnd_mix* FUNC2 (struct rsnd_mod*) ; 
 struct rsnd_priv* FUNC3 (struct rsnd_mod*) ; 
 int /*<<< orphan*/  FUNC4 (struct rsnd_mod*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct device* FUNC5 (struct rsnd_priv*) ; 

__attribute__((used)) static void FUNC6(struct rsnd_dai_stream *io,
				      struct rsnd_mod *mod)
{
	struct rsnd_priv *priv = FUNC3(mod);
	struct device *dev = FUNC5(priv);
	struct rsnd_mix *mix = FUNC2(mod);
	u32 volA = FUNC1(mix, A);
	u32 volB = FUNC1(mix, B);
	u32 volC = FUNC1(mix, C);
	u32 volD = FUNC1(mix, D);

	FUNC0(dev, "MIX A/B/C/D = %02x/%02x/%02x/%02x\n",
		volA, volB, volC, volD);

	FUNC4(mod, MIX_MDBAR, volA);
	FUNC4(mod, MIX_MDBBR, volB);
	FUNC4(mod, MIX_MDBCR, volC);
	FUNC4(mod, MIX_MDBDR, volD);
}