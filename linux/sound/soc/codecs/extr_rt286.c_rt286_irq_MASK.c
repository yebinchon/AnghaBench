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
struct rt286_priv {TYPE_1__* i2c; int /*<<< orphan*/  jack; int /*<<< orphan*/  regmap; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  RT286_IRQ_CTRL ; 
 int SND_JACK_HEADPHONE ; 
 int SND_JACK_MICROPHONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct rt286_priv*,int*,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static irqreturn_t FUNC4(int irq, void *data)
{
	struct rt286_priv *rt286 = data;
	bool hp = false;
	bool mic = false;
	int status = 0;

	FUNC2(rt286, &hp, &mic);

	/* Clear IRQ */
	FUNC1(rt286->regmap, RT286_IRQ_CTRL, 0x1, 0x1);

	if (hp)
		status |= SND_JACK_HEADPHONE;

	if (mic)
		status |= SND_JACK_MICROPHONE;

	FUNC3(rt286->jack, status,
		SND_JACK_MICROPHONE | SND_JACK_HEADPHONE);

	FUNC0(&rt286->i2c->dev, 300);

	return IRQ_HANDLED;
}