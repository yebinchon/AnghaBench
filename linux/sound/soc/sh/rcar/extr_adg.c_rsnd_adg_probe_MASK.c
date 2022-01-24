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
struct rsnd_priv {struct rsnd_adg* adg; } ;
struct rsnd_adg {int /*<<< orphan*/  mod; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  adg_ops ; 
 struct rsnd_adg* FUNC0 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rsnd_priv*,struct rsnd_adg*) ; 
 int /*<<< orphan*/  FUNC2 (struct rsnd_priv*) ; 
 int /*<<< orphan*/  FUNC3 (struct rsnd_priv*,struct rsnd_adg*) ; 
 int /*<<< orphan*/  FUNC4 (struct rsnd_priv*,struct rsnd_adg*) ; 
 int FUNC5 (struct rsnd_priv*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct device* FUNC6 (struct rsnd_priv*) ; 

int FUNC7(struct rsnd_priv *priv)
{
	struct rsnd_adg *adg;
	struct device *dev = FUNC6(priv);
	int ret;

	adg = FUNC0(dev, sizeof(*adg), GFP_KERNEL);
	if (!adg)
		return -ENOMEM;

	ret = FUNC5(priv, &adg->mod, &adg_ops,
		      NULL, 0, 0);
	if (ret)
		return ret;

	FUNC3(priv, adg);
	FUNC4(priv, adg);
	FUNC1(priv, adg);

	priv->adg = adg;

	FUNC2(priv);

	return 0;
}