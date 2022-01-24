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
struct rsnd_priv {struct rsnd_gen* gen; } ;
struct rsnd_gen {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 struct rsnd_gen* FUNC1 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct rsnd_priv*) ; 
 int FUNC3 (struct rsnd_priv*) ; 
 scalar_t__ FUNC4 (struct rsnd_priv*) ; 
 scalar_t__ FUNC5 (struct rsnd_priv*) ; 
 scalar_t__ FUNC6 (struct rsnd_priv*) ; 
 struct device* FUNC7 (struct rsnd_priv*) ; 

int FUNC8(struct rsnd_priv *priv)
{
	struct device *dev = FUNC7(priv);
	struct rsnd_gen *gen;
	int ret;

	gen = FUNC1(dev, sizeof(*gen), GFP_KERNEL);
	if (!gen)
		return -ENOMEM;

	priv->gen = gen;

	ret = -ENODEV;
	if (FUNC4(priv))
		ret = FUNC2(priv);
	else if (FUNC5(priv) ||
		 FUNC6(priv))
		ret = FUNC3(priv);

	if (ret < 0)
		FUNC0(dev, "unknown generation R-Car sound device\n");

	return ret;
}