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
struct tas6424_data {int /*<<< orphan*/  supplies; int /*<<< orphan*/  regmap; } ;
struct snd_soc_component {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TAS6424_ALL_STATE_HIZ ; 
 int /*<<< orphan*/  TAS6424_CH_STATE_CTRL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct tas6424_data* FUNC5 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_soc_component*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct snd_soc_component *component)
{
	struct tas6424_data *tas6424 = FUNC5(component);
	int ret;

	FUNC6(component, TAS6424_CH_STATE_CTRL, TAS6424_ALL_STATE_HIZ);

	FUNC2(tas6424->regmap, true);
	FUNC3(tas6424->regmap);

	ret = FUNC4(FUNC0(tas6424->supplies),
				     tas6424->supplies);
	if (ret < 0) {
		FUNC1(component->dev, "failed to disable supplies: %d\n", ret);
		return ret;
	}

	return 0;
}