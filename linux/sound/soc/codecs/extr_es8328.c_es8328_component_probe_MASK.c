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
struct snd_soc_component {int /*<<< orphan*/  dev; } ;
struct es8328_priv {int /*<<< orphan*/  supplies; int /*<<< orphan*/  clk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct es8328_priv* FUNC8 (struct snd_soc_component*) ; 

__attribute__((used)) static int FUNC9(struct snd_soc_component *component)
{
	struct es8328_priv *es8328;
	int ret;

	es8328 = FUNC8(component);

	ret = FUNC7(FUNC0(es8328->supplies),
					es8328->supplies);
	if (ret) {
		FUNC4(component->dev, "unable to enable regulators\n");
		return ret;
	}

	/* Setup clocks */
	es8328->clk = FUNC5(component->dev, NULL);
	if (FUNC1(es8328->clk)) {
		FUNC4(component->dev, "codec clock missing or invalid\n");
		ret = FUNC2(es8328->clk);
		goto clk_fail;
	}

	ret = FUNC3(es8328->clk);
	if (ret) {
		FUNC4(component->dev, "unable to prepare codec clk\n");
		goto clk_fail;
	}

	return 0;

clk_fail:
	FUNC6(FUNC0(es8328->supplies),
			       es8328->supplies);
	return ret;
}