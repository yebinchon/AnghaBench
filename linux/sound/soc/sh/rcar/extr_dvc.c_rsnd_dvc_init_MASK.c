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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rsnd_mod*) ; 
 int /*<<< orphan*/  FUNC1 (struct rsnd_dai_stream*,struct rsnd_mod*) ; 
 int /*<<< orphan*/  FUNC2 (struct rsnd_dai_stream*,struct rsnd_mod*) ; 
 int /*<<< orphan*/  FUNC3 (struct rsnd_mod*) ; 

__attribute__((used)) static int FUNC4(struct rsnd_mod *mod,
			 struct rsnd_dai_stream *io,
			 struct rsnd_priv *priv)
{
	FUNC3(mod);

	FUNC0(mod);

	FUNC1(io, mod);

	FUNC2(io, mod);

	return 0;
}