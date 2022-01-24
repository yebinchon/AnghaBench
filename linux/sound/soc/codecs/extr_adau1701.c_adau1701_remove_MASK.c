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
struct adau1701 {int /*<<< orphan*/  supplies; int /*<<< orphan*/  gpio_nreset; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct adau1701* FUNC4 (struct snd_soc_component*) ; 

__attribute__((used)) static void FUNC5(struct snd_soc_component *component)
{
	struct adau1701 *adau1701 = FUNC4(component);

	if (FUNC1(adau1701->gpio_nreset))
		FUNC2(adau1701->gpio_nreset, 0);

	FUNC3(FUNC0(adau1701->supplies), adau1701->supplies);
}