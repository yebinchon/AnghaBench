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
struct wm5110_priv {TYPE_1__ core; } ;
struct arizona_voice_trigger_info {int core; } ;
struct arizona {int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  ARIZONA_NOTIFY_VOICE_TRIGGER ; 
 int ENODEV ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int WM5110_NUM_ADSP ; 
 int WM_ADSP_COMPR_VOICE_TRIGGER ; 
 int /*<<< orphan*/  FUNC0 (struct arizona*,int /*<<< orphan*/ ,struct arizona_voice_trigger_info*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC3(int irq, void *data)
{
	struct wm5110_priv *priv = data;
	struct arizona *arizona = priv->core.arizona;
	struct arizona_voice_trigger_info info;
	int serviced = 0;
	int i, ret;

	for (i = 0; i < WM5110_NUM_ADSP; ++i) {
		ret = FUNC2(&priv->core.adsp[i]);
		if (ret != -ENODEV)
			serviced++;
		if (ret == WM_ADSP_COMPR_VOICE_TRIGGER) {
			info.core = i;
			FUNC0(arizona,
					       ARIZONA_NOTIFY_VOICE_TRIGGER,
					       &info);
		}
	}

	if (!serviced) {
		FUNC1(arizona->dev, "Spurious compressed data IRQ\n");
		return IRQ_NONE;
	}

	return IRQ_HANDLED;
}