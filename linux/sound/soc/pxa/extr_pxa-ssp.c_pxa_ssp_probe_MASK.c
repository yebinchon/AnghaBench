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
struct ssp_priv {unsigned int dai_fmt; int /*<<< orphan*/ * ssp; int /*<<< orphan*/ * extclk; } ;
struct snd_soc_dai {scalar_t__ id; struct device* dev; } ;
struct device_node {int dummy; } ;
struct device {scalar_t__ of_node; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 int /*<<< orphan*/ * FUNC3 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct ssp_priv*) ; 
 struct ssp_priv* FUNC5 (int,int /*<<< orphan*/ ) ; 
 struct device_node* FUNC6 (scalar_t__,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (scalar_t__,char*) ; 
 int /*<<< orphan*/ * FUNC8 (struct device_node*,char*) ; 
 int /*<<< orphan*/  FUNC9 (struct snd_soc_dai*,struct ssp_priv*) ; 

__attribute__((used)) static int FUNC10(struct snd_soc_dai *dai)
{
	struct device *dev = dai->dev;
	struct ssp_priv *priv;
	int ret;

	priv = FUNC5(sizeof(struct ssp_priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	if (dev->of_node) {
		struct device_node *ssp_handle;

		ssp_handle = FUNC6(dev->of_node, "port", 0);
		if (!ssp_handle) {
			FUNC2(dev, "unable to get 'port' phandle\n");
			ret = -ENODEV;
			goto err_priv;
		}

		priv->ssp = FUNC8(ssp_handle, "SoC audio");
		if (priv->ssp == NULL) {
			ret = -ENODEV;
			goto err_priv;
		}

		priv->extclk = FUNC3(dev, "extclk");
		if (FUNC0(priv->extclk)) {
			ret = FUNC1(priv->extclk);
			if (ret == -EPROBE_DEFER)
				return ret;

			priv->extclk = NULL;
		}
	} else {
		priv->ssp = FUNC7(dai->id + 1, "SoC audio");
		if (priv->ssp == NULL) {
			ret = -ENODEV;
			goto err_priv;
		}
	}

	priv->dai_fmt = (unsigned int) -1;
	FUNC9(dai, priv);

	return 0;

err_priv:
	FUNC4(priv);
	return ret;
}