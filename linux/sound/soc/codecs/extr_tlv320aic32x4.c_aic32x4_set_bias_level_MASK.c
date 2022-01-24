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
struct clk_bulk_data {char* id; } ;
typedef  enum snd_soc_bias_level { ____Placeholder_snd_soc_bias_level } snd_soc_bias_level ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct clk_bulk_data*) ; 
#define  SND_SOC_BIAS_OFF 131 
#define  SND_SOC_BIAS_ON 130 
#define  SND_SOC_BIAS_PREPARE 129 
#define  SND_SOC_BIAS_STANDBY 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct clk_bulk_data*) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct clk_bulk_data*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct clk_bulk_data*) ; 
 int FUNC5 (struct snd_soc_component*) ; 

__attribute__((used)) static int FUNC6(struct snd_soc_component *component,
				  enum snd_soc_bias_level level)
{
	int ret;

	struct clk_bulk_data clocks[] = {
		{ .id = "madc" },
		{ .id = "mdac" },
		{ .id = "bdiv" },
	};

	ret = FUNC4(component->dev, FUNC0(clocks), clocks);
	if (ret)
		return ret;

	switch (level) {
	case SND_SOC_BIAS_ON:
		ret = FUNC2(FUNC0(clocks), clocks);
		if (ret) {
			FUNC3(component->dev, "Failed to enable clocks\n");
			return ret;
		}
		break;
	case SND_SOC_BIAS_PREPARE:
		break;
	case SND_SOC_BIAS_STANDBY:
		/* Initial cold start */
		if (FUNC5(component) == SND_SOC_BIAS_OFF)
			break;

		FUNC1(FUNC0(clocks), clocks);
		break;
	case SND_SOC_BIAS_OFF:
		break;
	}
	return 0;
}