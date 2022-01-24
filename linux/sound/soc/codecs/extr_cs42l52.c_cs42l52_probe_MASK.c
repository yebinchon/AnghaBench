#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct snd_soc_component {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  format; } ;
struct cs42l52_private {TYPE_1__ config; int /*<<< orphan*/  sysclk; int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  CS42L52_DEFAULT_CLK ; 
 int /*<<< orphan*/  CS42L52_DEFAULT_FORMAT ; 
 int /*<<< orphan*/  FUNC0 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 struct cs42l52_private* FUNC3 (struct snd_soc_component*) ; 

__attribute__((used)) static int FUNC4(struct snd_soc_component *component)
{
	struct cs42l52_private *cs42l52 = FUNC3(component);

	FUNC2(cs42l52->regmap, true);

	FUNC0(component);

	FUNC1(component);

	cs42l52->sysclk = CS42L52_DEFAULT_CLK;
	cs42l52->config.format = CS42L52_DEFAULT_FORMAT;

	return 0;
}