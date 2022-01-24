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
struct tas5086_private {int /*<<< orphan*/  supplies; int /*<<< orphan*/  gpio_nreset; } ;
struct snd_soc_component {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct tas5086_private* FUNC4 (struct snd_soc_component*) ; 

__attribute__((used)) static void FUNC5(struct snd_soc_component *component)
{
	struct tas5086_private *priv = FUNC4(component);

	if (FUNC1(priv->gpio_nreset))
		/* Set codec to the reset state */
		FUNC2(priv->gpio_nreset, 0);

	FUNC3(FUNC0(priv->supplies), priv->supplies);
}