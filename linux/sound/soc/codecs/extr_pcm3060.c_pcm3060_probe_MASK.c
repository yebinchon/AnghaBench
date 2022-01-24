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
struct pcm3060_priv {int /*<<< orphan*/  regmap; scalar_t__ out_se; } ;
struct device {scalar_t__ of_node; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PCM3060_REG64 ; 
 int /*<<< orphan*/  PCM3060_REG_MRST ; 
 int /*<<< orphan*/  PCM3060_REG_SE ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int) ; 
 struct pcm3060_priv* FUNC2 (struct device*) ; 
 int FUNC3 (struct device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pcm3060_dai ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,struct pcm3060_priv*) ; 
 int /*<<< orphan*/  pcm3060_soc_comp_driver ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC6(struct device *dev)
{
	int rc;
	struct pcm3060_priv *priv = FUNC2(dev);

	/* soft reset */
	rc = FUNC5(priv->regmap, PCM3060_REG64,
				PCM3060_REG_MRST, 0);
	if (rc) {
		FUNC1(dev, "failed to reset component, rc=%d\n", rc);
		return rc;
	}

	if (dev->of_node)
		FUNC4(dev->of_node, priv);

	if (priv->out_se)
		FUNC5(priv->regmap, PCM3060_REG64,
				   PCM3060_REG_SE, PCM3060_REG_SE);

	rc = FUNC3(dev, &pcm3060_soc_comp_driver,
					     pcm3060_dai,
					     FUNC0(pcm3060_dai));
	if (rc) {
		FUNC1(dev, "failed to register component, rc=%d\n", rc);
		return rc;
	}

	return 0;
}