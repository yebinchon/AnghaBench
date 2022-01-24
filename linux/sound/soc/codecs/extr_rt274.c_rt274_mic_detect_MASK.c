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
struct snd_soc_jack {int dummy; } ;
struct snd_soc_component {int dummy; } ;
struct rt274_priv {int /*<<< orphan*/  regmap; struct snd_soc_jack* jack; } ;

/* Variables and functions */
 int /*<<< orphan*/  RT274_EAPD_GPIO_IRQ_CTRL ; 
 int /*<<< orphan*/  RT274_IRQ_DIS ; 
 int /*<<< orphan*/  RT274_IRQ_EN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct rt274_priv*) ; 
 struct rt274_priv* FUNC2 (struct snd_soc_component*) ; 

__attribute__((used)) static int FUNC3(struct snd_soc_component *component,
	struct snd_soc_jack *jack,  void *data)
{
	struct rt274_priv *rt274 = FUNC2(component);

	rt274->jack = jack;

	if (jack == NULL) {
		/* Disable jack detection */
		FUNC0(rt274->regmap, RT274_EAPD_GPIO_IRQ_CTRL,
					RT274_IRQ_EN, RT274_IRQ_DIS);

		return 0;
	}

	FUNC0(rt274->regmap, RT274_EAPD_GPIO_IRQ_CTRL,
				RT274_IRQ_EN, RT274_IRQ_EN);

	/* Send an initial report */
	FUNC1(0, rt274);

	return 0;
}