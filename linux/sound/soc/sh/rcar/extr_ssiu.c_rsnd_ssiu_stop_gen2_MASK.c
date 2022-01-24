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
struct rsnd_ssiu {scalar_t__ usrcnt; } ;
struct rsnd_priv {int dummy; } ;
struct rsnd_mod {int dummy; } ;
struct rsnd_dai_stream {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SSI_CONTROL ; 
 int /*<<< orphan*/  SSI_CTRL ; 
 int /*<<< orphan*/  FUNC0 (struct rsnd_mod*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct rsnd_mod*) ; 
 struct rsnd_ssiu* FUNC2 (struct rsnd_mod*) ; 
 int /*<<< orphan*/  FUNC3 (struct rsnd_mod*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct rsnd_dai_stream*) ; 
 int /*<<< orphan*/  FUNC5 (struct rsnd_dai_stream*) ; 

__attribute__((used)) static int FUNC6(struct rsnd_mod *mod,
			       struct rsnd_dai_stream *io,
			       struct rsnd_priv *priv)
{
	struct rsnd_ssiu *ssiu = FUNC2(mod);
	int busif = FUNC1(mod);

	if (!FUNC5(io))
		return 0;

	FUNC0(mod, SSI_CTRL, 1 << (busif * 4), 0);

	if (--ssiu->usrcnt)
		return 0;

	if (FUNC4(io))
		FUNC3(mod, SSI_CONTROL, 0);

	return 0;
}