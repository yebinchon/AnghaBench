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
struct TYPE_2__ {int /*<<< orphan*/  work; } ;
struct twl6040_data {TYPE_1__ hs_jack; } ;
struct snd_soc_component {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct twl6040_data* FUNC2 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  system_power_efficient_wq ; 

__attribute__((used)) static irqreturn_t FUNC3(int irq, void *data)
{
	struct snd_soc_component *component = data;
	struct twl6040_data *priv = FUNC2(component);

	FUNC1(system_power_efficient_wq,
			   &priv->hs_jack.work, FUNC0(200));

	return IRQ_HANDLED;
}