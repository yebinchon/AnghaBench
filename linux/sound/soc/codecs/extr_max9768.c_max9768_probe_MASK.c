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
struct snd_soc_component {int dummy; } ;
struct max9768 {int flags; int /*<<< orphan*/  mute_gpio; int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MAX9768_CTRL ; 
 int /*<<< orphan*/  MAX9768_CTRL_PWM ; 
 int MAX9768_FLAG_CLASSIC_PWM ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  max9768_mute ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct snd_soc_component*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct max9768* FUNC4 (struct snd_soc_component*) ; 

__attribute__((used)) static int FUNC5(struct snd_soc_component *component)
{
	struct max9768 *max9768 = FUNC4(component);
	int ret;

	if (max9768->flags & MAX9768_FLAG_CLASSIC_PWM) {
		ret = FUNC2(max9768->regmap, MAX9768_CTRL,
			MAX9768_CTRL_PWM);
		if (ret)
			return ret;
	}

	if (FUNC1(max9768->mute_gpio)) {
		ret = FUNC3(component, max9768_mute,
				FUNC0(max9768_mute));
		if (ret)
			return ret;
	}

	return 0;
}