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

/* Variables and functions */
 int /*<<< orphan*/  SSI_INT_ENABLE ; 
 scalar_t__ FUNC0 (struct rsnd_priv*) ; 
 int /*<<< orphan*/  FUNC1 (struct rsnd_mod*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (struct rsnd_mod*) ; 
 scalar_t__ FUNC3 (struct rsnd_mod*,struct rsnd_dai_stream*) ; 
 int /*<<< orphan*/  FUNC4 (struct rsnd_mod*,struct rsnd_dai_stream*) ; 

__attribute__((used)) static int FUNC5(struct rsnd_mod *mod,
			struct rsnd_dai_stream *io,
			struct rsnd_priv *priv,
			int enable)
{
	u32 val = 0;

	if (FUNC0(priv))
		return 0;

	if (FUNC3(mod, io))
		return 0;

	if (!FUNC4(mod, io))
		return 0;

	if (enable)
		val = FUNC2(mod) ? 0x0e000000 : 0x0f000000;

	FUNC1(mod, SSI_INT_ENABLE, val);

	return 0;
}