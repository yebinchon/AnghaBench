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
struct rsnd_priv {int dummy; } ;
struct rsnd_mod {int dummy; } ;
struct rsnd_dai_stream {int dummy; } ;
struct rsnd_dai {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  RSND_MOD_SSIP ; 
 int /*<<< orphan*/  FUNC0 (struct rsnd_mod*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct rsnd_dai_stream*,int /*<<< orphan*/ ) ; 
 struct rsnd_dai* FUNC2 (struct rsnd_dai_stream*) ; 
 int FUNC3 (struct rsnd_mod*) ; 
 struct rsnd_priv* FUNC4 (struct rsnd_mod*) ; 
 int /*<<< orphan*/  FUNC5 (struct rsnd_dai*) ; 
 int /*<<< orphan*/  FUNC6 (struct rsnd_priv*,int) ; 

__attribute__((used)) static void FUNC7(struct rsnd_mod *mod,
				   struct rsnd_dai_stream *io)
{
	struct rsnd_dai *rdai = FUNC2(io);
	struct rsnd_priv *priv = FUNC4(mod);

	if (!FUNC0(mod))
		return;

	if (!FUNC5(rdai))
		return;

	switch (FUNC3(mod)) {
	case 1:
	case 2:
	case 9:
		FUNC1(FUNC6(priv, 0), io, RSND_MOD_SSIP);
		break;
	case 4:
		FUNC1(FUNC6(priv, 3), io, RSND_MOD_SSIP);
		break;
	case 8:
		FUNC1(FUNC6(priv, 7), io, RSND_MOD_SSIP);
		break;
	}
}