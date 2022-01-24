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
struct madera_priv {int /*<<< orphan*/ * adsp; struct madera* madera; } ;
struct madera {int /*<<< orphan*/  dev; } ;
struct cs47l15 {struct madera_priv core; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC2(int irq, void *data)
{
	struct cs47l15 *cs47l15 = data;
	struct madera_priv *priv = &cs47l15->core;
	struct madera *madera = priv->madera;
	int ret;

	ret = FUNC1(&priv->adsp[0]);
	if (ret == -ENODEV) {
		FUNC0(madera->dev, "Spurious compressed data IRQ\n");
		return IRQ_NONE;
	}

	return IRQ_HANDLED;
}