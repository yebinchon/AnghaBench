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
struct rsnd_ssi {int dummy; } ;
struct rsnd_mod {int dummy; } ;
struct rsnd_dai_stream {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  RSND_SSI_NO_BUSIF ; 
 int /*<<< orphan*/  FUNC0 (struct rsnd_ssi*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct rsnd_dai_stream*) ; 
 struct rsnd_mod* FUNC2 (struct rsnd_dai_stream*) ; 
 struct rsnd_ssi* FUNC3 (struct rsnd_mod*) ; 
 int /*<<< orphan*/  FUNC4 (struct rsnd_mod*) ; 

int FUNC5(struct rsnd_dai_stream *io)
{
	struct rsnd_mod *mod = FUNC2(io);
	struct rsnd_ssi *ssi = FUNC3(mod);
	int use_busif = 0;

	if (!FUNC4(mod))
		return 0;

	if (!(FUNC0(ssi, RSND_SSI_NO_BUSIF)))
		use_busif = 1;
	if (FUNC1(io))
		use_busif = 1;

	return use_busif;
}