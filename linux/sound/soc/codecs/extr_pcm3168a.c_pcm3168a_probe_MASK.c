#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct regmap {int dummy; } ;
struct pcm3168a_priv {struct regmap* scki; TYPE_1__* supplies; struct regmap* regmap; int /*<<< orphan*/  sysclk; } ;
struct device {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  supply; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (struct regmap*) ; 
 int FUNC2 (struct regmap*) ; 
 int /*<<< orphan*/  FUNC3 (struct regmap*) ; 
 int /*<<< orphan*/  FUNC4 (struct regmap*) ; 
 int FUNC5 (struct regmap*) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,struct pcm3168a_priv*) ; 
 struct regmap* FUNC8 (struct device*,char*) ; 
 struct pcm3168a_priv* FUNC9 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct device*,int,TYPE_1__*) ; 
 int FUNC11 (struct device*,int /*<<< orphan*/ *,TYPE_1__*,int) ; 
 TYPE_1__* pcm3168a_dais ; 
 int /*<<< orphan*/  pcm3168a_driver ; 
 int FUNC12 (struct pcm3168a_priv*) ; 
 int /*<<< orphan*/ * pcm3168a_supply_names ; 
 int /*<<< orphan*/  FUNC13 (struct device*) ; 
 int /*<<< orphan*/  FUNC14 (struct device*) ; 
 int /*<<< orphan*/  FUNC15 (struct device*) ; 
 int /*<<< orphan*/  FUNC16 (int,TYPE_1__*) ; 
 int FUNC17 (int,TYPE_1__*) ; 

int FUNC18(struct device *dev, struct regmap *regmap)
{
	struct pcm3168a_priv *pcm3168a;
	int ret, i;

	pcm3168a = FUNC9(dev, sizeof(*pcm3168a), GFP_KERNEL);
	if (pcm3168a == NULL)
		return -ENOMEM;

	FUNC7(dev, pcm3168a);

	pcm3168a->scki = FUNC8(dev, "scki");
	if (FUNC1(pcm3168a->scki)) {
		ret = FUNC2(pcm3168a->scki);
		if (ret != -EPROBE_DEFER)
			FUNC6(dev, "failed to acquire clock 'scki': %d\n", ret);
		return ret;
	}

	ret = FUNC5(pcm3168a->scki);
	if (ret) {
		FUNC6(dev, "Failed to enable mclk: %d\n", ret);
		return ret;
	}

	pcm3168a->sysclk = FUNC4(pcm3168a->scki);

	for (i = 0; i < FUNC0(pcm3168a->supplies); i++)
		pcm3168a->supplies[i].supply = pcm3168a_supply_names[i];

	ret = FUNC10(dev,
			FUNC0(pcm3168a->supplies), pcm3168a->supplies);
	if (ret) {
		if (ret != -EPROBE_DEFER)
			FUNC6(dev, "failed to request supplies: %d\n", ret);
		goto err_clk;
	}

	ret = FUNC17(FUNC0(pcm3168a->supplies),
				    pcm3168a->supplies);
	if (ret) {
		FUNC6(dev, "failed to enable supplies: %d\n", ret);
		goto err_clk;
	}

	pcm3168a->regmap = regmap;
	if (FUNC1(pcm3168a->regmap)) {
		ret = FUNC2(pcm3168a->regmap);
		FUNC6(dev, "failed to allocate regmap: %d\n", ret);
		goto err_regulator;
	}

	ret = FUNC12(pcm3168a);
	if (ret) {
		FUNC6(dev, "Failed to reset device: %d\n", ret);
		goto err_regulator;
	}

	FUNC15(dev);
	FUNC13(dev);
	FUNC14(dev);

	ret = FUNC11(dev, &pcm3168a_driver, pcm3168a_dais,
			FUNC0(pcm3168a_dais));
	if (ret) {
		FUNC6(dev, "failed to register component: %d\n", ret);
		goto err_regulator;
	}

	return 0;

err_regulator:
	FUNC16(FUNC0(pcm3168a->supplies),
			pcm3168a->supplies);
err_clk:
	FUNC3(pcm3168a->scki);

	return ret;
}