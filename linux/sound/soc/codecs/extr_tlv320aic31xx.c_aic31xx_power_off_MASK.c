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
struct aic31xx_priv {int /*<<< orphan*/  supplies; int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct aic31xx_priv* FUNC3 (struct snd_soc_component*) ; 

__attribute__((used)) static void FUNC4(struct snd_soc_component *component)
{
	struct aic31xx_priv *aic31xx = FUNC3(component);

	FUNC1(aic31xx->regmap, true);
	FUNC2(FUNC0(aic31xx->supplies),
			       aic31xx->supplies);
}