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
struct snd_soc_component {int /*<<< orphan*/  dev; } ;
struct max98095_priv {TYPE_1__* pdata; } ;
struct TYPE_2__ {int jack_detect_delay; scalar_t__ jack_detect_pin5en; } ;

/* Variables and functions */
 int /*<<< orphan*/  M98095_089_JACK_DET_AUTO ; 
 int /*<<< orphan*/  M98095_08E_JACK_DC_SLEW ; 
 unsigned int M98095_DEFAULT_SLEW_DELAY ; 
 int M98095_JDEN ; 
 int M98095_PIN5EN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 struct max98095_priv* FUNC1 (struct snd_soc_component*) ; 
 int FUNC2 (struct snd_soc_component*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct snd_soc_component *component)
{
	struct max98095_priv *max98095 = FUNC1(component);
	int ret = 0;
	int detect_enable = M98095_JDEN;
	unsigned int slew = M98095_DEFAULT_SLEW_DELAY;

	if (max98095->pdata->jack_detect_pin5en)
		detect_enable |= M98095_PIN5EN;

	if (max98095->pdata->jack_detect_delay)
		slew = max98095->pdata->jack_detect_delay;

	ret = FUNC2(component, M98095_08E_JACK_DC_SLEW, slew);
	if (ret < 0) {
		FUNC0(component->dev, "Failed to cfg auto detect %d\n", ret);
		return ret;
	}

	/* configure auto detection to be enabled */
	ret = FUNC2(component, M98095_089_JACK_DET_AUTO, detect_enable);
	if (ret < 0) {
		FUNC0(component->dev, "Failed to cfg auto detect %d\n", ret);
		return ret;
	}

	return ret;
}