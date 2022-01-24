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
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rsnd_mod*) ; 
 struct rsnd_priv* FUNC2 (struct rsnd_mod*) ; 
 struct device* FUNC3 (struct rsnd_priv*) ; 
 int FUNC4 (struct rsnd_mod*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static void FUNC6(struct rsnd_mod *mod,
				  u32 bit)
{
	struct rsnd_priv *priv = FUNC2(mod);
	struct device *dev = FUNC3(priv);
	u32 status;
	int i;

	for (i = 0; i < 1024; i++) {
		status = FUNC4(mod);
		if (status & bit)
			return;

		FUNC5(5);
	}

	FUNC0(dev, "%s status check failed\n", FUNC1(mod));
}