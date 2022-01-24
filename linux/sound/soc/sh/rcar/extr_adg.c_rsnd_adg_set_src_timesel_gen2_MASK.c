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
 int /*<<< orphan*/  DIV_EN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct rsnd_priv*,struct rsnd_dai_stream*,unsigned int,unsigned int,int*,int*,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct rsnd_mod*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct rsnd_mod*) ; 
 struct rsnd_mod* FUNC5 (struct rsnd_adg*) ; 
 int FUNC6 (struct rsnd_mod*) ; 
 struct rsnd_priv* FUNC7 (struct rsnd_mod*) ; 
 struct rsnd_adg* FUNC8 (struct rsnd_priv*) ; 

int FUNC9(struct rsnd_mod *src_mod,
				  struct rsnd_dai_stream *io,
				  unsigned int in_rate,
				  unsigned int out_rate)
{
	struct rsnd_priv *priv = FUNC7(src_mod);
	struct rsnd_adg *adg = FUNC8(priv);
	struct rsnd_mod *adg_mod = FUNC5(adg);
	u32 in, out;
	u32 mask, en;
	int id = FUNC6(src_mod);
	int shift = (id % 2) ? 16 : 0;

	FUNC4(src_mod);

	FUNC2(priv, io,
				   in_rate, out_rate,
				   &in, &out, &en);

	in   = in	<< shift;
	out  = out	<< shift;
	mask = 0x0f1f	<< shift;

	FUNC3(adg_mod, FUNC0(id / 2),  mask, in);
	FUNC3(adg_mod, FUNC1(id / 2), mask, out);

	if (en)
		FUNC3(adg_mod, DIV_EN, en, en);

	return 0;
}