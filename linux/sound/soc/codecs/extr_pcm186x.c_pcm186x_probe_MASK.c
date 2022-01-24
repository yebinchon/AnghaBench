#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct regmap {int dummy; } ;
struct pcm186x_priv {TYPE_1__* supplies; struct regmap* regmap; } ;
struct device {int dummy; } ;
typedef  enum pcm186x_type { ____Placeholder_pcm186x_type } pcm186x_type ;
struct TYPE_5__ {int /*<<< orphan*/  supply; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
#define  PCM1862 131 
#define  PCM1863 130 
#define  PCM1864 129 
#define  PCM1865 128 
 int /*<<< orphan*/  PCM186X_PAGE ; 
 int /*<<< orphan*/  PCM186X_RESET ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,struct pcm186x_priv*) ; 
 struct pcm186x_priv* FUNC3 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct device*,int,TYPE_1__*) ; 
 int FUNC5 (struct device*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  pcm1863_dai ; 
 int /*<<< orphan*/  pcm1865_dai ; 
 int /*<<< orphan*/ * pcm186x_supply_names ; 
 int FUNC6 (struct regmap*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (int,TYPE_1__*) ; 
 int FUNC8 (int,TYPE_1__*) ; 
 int /*<<< orphan*/  soc_codec_dev_pcm1863 ; 
 int /*<<< orphan*/  soc_codec_dev_pcm1865 ; 

int FUNC9(struct device *dev, enum pcm186x_type type, int irq,
		  struct regmap *regmap)
{
	struct pcm186x_priv *priv;
	int i, ret;

	priv = FUNC3(dev, sizeof(struct pcm186x_priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	FUNC2(dev, priv);
	priv->regmap = regmap;

	for (i = 0; i < FUNC0(priv->supplies); i++)
		priv->supplies[i].supply = pcm186x_supply_names[i];

	ret = FUNC4(dev, FUNC0(priv->supplies),
				      priv->supplies);
	if (ret) {
		FUNC1(dev, "failed to request supplies: %d\n", ret);
		return ret;
	}

	ret = FUNC8(FUNC0(priv->supplies),
				    priv->supplies);
	if (ret) {
		FUNC1(dev, "failed enable supplies: %d\n", ret);
		return ret;
	}

	/* Reset device registers for a consistent power-on like state */
	ret = FUNC6(regmap, PCM186X_PAGE, PCM186X_RESET);
	if (ret) {
		FUNC1(dev, "failed to write device: %d\n", ret);
		return ret;
	}

	ret = FUNC7(FUNC0(priv->supplies),
				     priv->supplies);
	if (ret) {
		FUNC1(dev, "failed disable supplies: %d\n", ret);
		return ret;
	}

	switch (type) {
	case PCM1865:
	case PCM1864:
		ret = FUNC5(dev, &soc_codec_dev_pcm1865,
					     &pcm1865_dai, 1);
		break;
	case PCM1863:
	case PCM1862:
	default:
		ret = FUNC5(dev, &soc_codec_dev_pcm1863,
					     &pcm1863_dai, 1);
	}
	if (ret) {
		FUNC1(dev, "failed to register CODEC: %d\n", ret);
		return ret;
	}

	return 0;
}