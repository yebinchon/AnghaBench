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
struct rsnd_src {int irq; } ;
struct rsnd_priv {int dummy; } ;
struct rsnd_mod {int dummy; } ;
struct rsnd_dai_stream {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  SCU_SYS_INT_EN0 ; 
 int /*<<< orphan*/  SCU_SYS_INT_EN1 ; 
 int /*<<< orphan*/  SRC_INT_ENABLE0 ; 
 int /*<<< orphan*/  FUNC1 (struct rsnd_mod*,int /*<<< orphan*/ ,int,int) ; 
 int FUNC2 (struct rsnd_mod*) ; 
 struct rsnd_src* FUNC3 (struct rsnd_mod*) ; 
 int /*<<< orphan*/  FUNC4 (struct rsnd_mod*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (struct rsnd_mod*) ; 

__attribute__((used)) static int FUNC6(struct rsnd_mod *mod,
			struct rsnd_dai_stream *io,
			struct rsnd_priv *priv,
			int enable)
{
	struct rsnd_src *src = FUNC3(mod);
	u32 sys_int_val, int_val, sys_int_mask;
	int irq = src->irq;
	int id = FUNC2(mod);

	sys_int_val =
	sys_int_mask = FUNC0(id);
	int_val = 0x3300;

	/*
	 * IRQ is not supported on non-DT
	 * see
	 *	rsnd_src_probe_()
	 */
	if ((irq <= 0) || !enable) {
		sys_int_val = 0;
		int_val = 0;
	}

	/*
	 * WORKAROUND
	 *
	 * ignore over flow error when rsnd_src_sync_is_enabled()
	 */
	if (FUNC5(mod))
		sys_int_val = sys_int_val & 0xffff;

	FUNC4(mod, SRC_INT_ENABLE0, int_val);
	FUNC1(mod, SCU_SYS_INT_EN0, sys_int_mask, sys_int_val);
	FUNC1(mod, SCU_SYS_INT_EN1, sys_int_mask, sys_int_val);

	return 0;
}