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
struct TYPE_2__ {int /*<<< orphan*/ * adsp; struct arizona* arizona; } ;
struct wm5102_priv {TYPE_1__ core; } ;
struct arizona {int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC2(int irq, void *data)
{
	struct wm5102_priv *priv = data;
	struct arizona *arizona = priv->core.arizona;
	int ret;

	ret = FUNC1(&priv->core.adsp[0]);
	if (ret == -ENODEV) {
		FUNC0(arizona->dev, "Spurious compressed data IRQ\n");
		return IRQ_NONE;
	}

	return IRQ_HANDLED;
}