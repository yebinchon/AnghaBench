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
struct cs42l56_private {int /*<<< orphan*/ * beep; int /*<<< orphan*/  beep_work; } ;

/* Variables and functions */
 int /*<<< orphan*/  CS42L56_BEEP_EN_MASK ; 
 int /*<<< orphan*/  CS42L56_BEEP_TONE_CFG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  dev_attr_beep ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct cs42l56_private* FUNC2 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_soc_component*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct snd_soc_component *component)
{
	struct cs42l56_private *cs42l56 = FUNC2(component);

	FUNC1(component->dev, &dev_attr_beep);
	FUNC0(&cs42l56->beep_work);
	cs42l56->beep = NULL;

	FUNC3(component, CS42L56_BEEP_TONE_CFG,
			    CS42L56_BEEP_EN_MASK, 0);
}