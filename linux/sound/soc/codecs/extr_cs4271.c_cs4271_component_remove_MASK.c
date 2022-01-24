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
struct cs4271_private {int /*<<< orphan*/  supplies; int /*<<< orphan*/  regmap; int /*<<< orphan*/  gpio_nreset; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct cs4271_private* FUNC5 (struct snd_soc_component*) ; 

__attribute__((used)) static void FUNC6(struct snd_soc_component *component)
{
	struct cs4271_private *cs4271 = FUNC5(component);

	if (FUNC1(cs4271->gpio_nreset))
		/* Set codec to the reset state */
		FUNC2(cs4271->gpio_nreset, 0);

	FUNC3(cs4271->regmap);
	FUNC4(FUNC0(cs4271->supplies), cs4271->supplies);
}