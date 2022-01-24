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

/* Variables and functions */
 int /*<<< orphan*/  RT5640_IRQ_CTRL2 ; 
 int RT5640_MB1_OC_STATUS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (struct snd_soc_component*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC2(struct snd_soc_component *component)
{
	int val;

	val = FUNC1(component, RT5640_IRQ_CTRL2);
	FUNC0(component->dev, "irq ctrl2 %#04x\n", val);

	return (val & RT5640_MB1_OC_STATUS);
}