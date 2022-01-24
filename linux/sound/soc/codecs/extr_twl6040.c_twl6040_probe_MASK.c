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
struct twl6040_data {scalar_t__ plug_irq; int /*<<< orphan*/  mutex; TYPE_1__ hs_jack; struct snd_soc_component* component; } ;
struct snd_soc_component {int /*<<< orphan*/  dev; } ;
struct platform_device {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int IRQF_NO_SUSPEND ; 
 int IRQF_ONESHOT ; 
 int /*<<< orphan*/  SND_SOC_BIAS_STANDBY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 struct twl6040_data* FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int FUNC5 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,char*,struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_soc_component*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct snd_soc_component*,struct twl6040_data*) ; 
 struct platform_device* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  twl6040_accessory_work ; 
 int /*<<< orphan*/  twl6040_audio_handler ; 
 int /*<<< orphan*/  FUNC9 (struct snd_soc_component*) ; 

__attribute__((used)) static int FUNC10(struct snd_soc_component *component)
{
	struct twl6040_data *priv;
	struct platform_device *pdev = FUNC8(component->dev);
	int ret = 0;

	priv = FUNC2(component->dev, sizeof(*priv), GFP_KERNEL);
	if (priv == NULL)
		return -ENOMEM;

	FUNC7(component, priv);

	priv->component = component;

	priv->plug_irq = FUNC4(pdev, 0);
	if (priv->plug_irq < 0)
		return priv->plug_irq;

	FUNC0(&priv->hs_jack.work, twl6040_accessory_work);

	FUNC3(&priv->mutex);

	ret = FUNC5(priv->plug_irq, NULL,
					twl6040_audio_handler,
					IRQF_NO_SUSPEND | IRQF_ONESHOT,
					"twl6040_irq_plug", component);
	if (ret) {
		FUNC1(component->dev, "PLUG IRQ request failed: %d\n", ret);
		return ret;
	}

	FUNC6(component, SND_SOC_BIAS_STANDBY);
	FUNC9(component);

	return 0;
}