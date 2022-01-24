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
struct rt274_priv {TYPE_1__* i2c; int /*<<< orphan*/  jack; int /*<<< orphan*/  regmap; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  RT274_EAPD_GPIO_IRQ_CTRL ; 
 int /*<<< orphan*/  RT274_IRQ_CLR ; 
 int SND_JACK_HEADPHONE ; 
 int SND_JACK_MICROPHONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct rt274_priv*,int*,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static irqreturn_t FUNC4(int irq, void *data)
{
	struct rt274_priv *rt274 = data;
	bool hp = false;
	bool mic = false;
	int ret, status = 0;

	/* Clear IRQ */
	FUNC1(rt274->regmap, RT274_EAPD_GPIO_IRQ_CTRL,
				RT274_IRQ_CLR, RT274_IRQ_CLR);

	ret = FUNC2(rt274, &hp, &mic);

	if (ret == 0) {
		if (hp)
			status |= SND_JACK_HEADPHONE;

		if (mic)
			status |= SND_JACK_MICROPHONE;

		FUNC3(rt274->jack, status,
			SND_JACK_MICROPHONE | SND_JACK_HEADPHONE);

		FUNC0(&rt274->i2c->dev, 300);
	}

	return IRQ_HANDLED;
}