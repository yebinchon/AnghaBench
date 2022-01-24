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
struct madera_voice_trigger_info {int core_num; } ;
struct madera_priv {int /*<<< orphan*/ * adsp; struct madera* madera; } ;
struct madera {int /*<<< orphan*/  dev; int /*<<< orphan*/  notifier; } ;
struct cs47l90 {struct madera_priv core; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int CS47L90_NUM_ADSP ; 
 int ENODEV ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  MADERA_NOTIFY_VOICE_TRIGGER ; 
 int WM_ADSP_COMPR_VOICE_TRIGGER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct madera_voice_trigger_info*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC3(int irq, void *data)
{
	struct cs47l90 *cs47l90 = data;
	struct madera_priv *priv = &cs47l90->core;
	struct madera *madera = priv->madera;
	struct madera_voice_trigger_info trig_info;
	int serviced = 0;
	int i, ret;

	for (i = 0; i < CS47L90_NUM_ADSP; ++i) {
		ret = FUNC2(&priv->adsp[i]);
		if (ret != -ENODEV)
			serviced++;
		if (ret == WM_ADSP_COMPR_VOICE_TRIGGER) {
			trig_info.core_num = i + 1;
			FUNC0(&madera->notifier,
						MADERA_NOTIFY_VOICE_TRIGGER,
						&trig_info);
		}
	}

	if (!serviced) {
		FUNC1(madera->dev, "Spurious compressed data IRQ\n");
		return IRQ_NONE;
	}

	return IRQ_HANDLED;
}