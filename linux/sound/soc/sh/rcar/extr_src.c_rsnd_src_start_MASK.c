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
 int /*<<< orphan*/  SRC_CTRL ; 
 scalar_t__ FUNC0 (struct rsnd_dai_stream*) ; 
 int /*<<< orphan*/  FUNC1 (struct rsnd_mod*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct rsnd_mod*) ; 

__attribute__((used)) static int FUNC3(struct rsnd_mod *mod,
			  struct rsnd_dai_stream *io,
			  struct rsnd_priv *priv)
{
	u32 val;

	/*
	 * WORKAROUND
	 *
	 * Enable SRC output if you want to use sync convert together with DVC
	 */
	val = (FUNC0(io) && !FUNC2(mod)) ?
		0x01 : 0x11;

	FUNC1(mod, SRC_CTRL, val);

	return 0;
}