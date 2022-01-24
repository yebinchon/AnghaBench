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
struct device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCU_SYS_STATUS0 ; 
 int /*<<< orphan*/  SCU_SYS_STATUS1 ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct rsnd_mod*) ; 
 int /*<<< orphan*/  FUNC3 (struct rsnd_mod*) ; 
 int FUNC4 (struct rsnd_mod*,int /*<<< orphan*/ ) ; 
 struct rsnd_priv* FUNC5 (struct rsnd_mod*) ; 
 struct device* FUNC6 (struct rsnd_priv*) ; 
 scalar_t__ FUNC7 (struct rsnd_mod*) ; 

__attribute__((used)) static bool FUNC8(struct rsnd_mod *mod)
{
	struct rsnd_priv *priv = FUNC5(mod);
	struct device *dev = FUNC6(priv);
	u32 val0, val1;
	u32 status0, status1;
	bool ret = false;

	val0 = val1 = FUNC0(FUNC2(mod));

	/*
	 * WORKAROUND
	 *
	 * ignore over flow error when rsnd_src_sync_is_enabled()
	 */
	if (FUNC7(mod))
		val0 = val0 & 0xffff;

	status0 = FUNC4(mod, SCU_SYS_STATUS0);
	status1 = FUNC4(mod, SCU_SYS_STATUS1);
	if ((status0 & val0) || (status1 & val1)) {
		FUNC1(dev, "%s err status : 0x%08x, 0x%08x\n",
			FUNC3(mod), status0, status1);

		ret = true;
	}

	return ret;
}