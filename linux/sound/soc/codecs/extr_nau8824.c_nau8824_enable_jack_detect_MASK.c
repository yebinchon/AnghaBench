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
struct nau8824 {int /*<<< orphan*/  irq; int /*<<< orphan*/  dev; int /*<<< orphan*/  jdet_work; struct snd_soc_jack* jack; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int IRQF_ONESHOT ; 
 int IRQF_TRIGGER_LOW ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,char*,struct nau8824*) ; 
 int /*<<< orphan*/  nau8824_interrupt ; 
 int /*<<< orphan*/  nau8824_jdet_work ; 
 struct nau8824* FUNC3 (struct snd_soc_component*) ; 

int FUNC4(struct snd_soc_component *component,
	struct snd_soc_jack *jack)
{
	struct nau8824 *nau8824 = FUNC3(component);
	int ret;

	nau8824->jack = jack;
	/* Initiate jack detection work queue */
	FUNC0(&nau8824->jdet_work, nau8824_jdet_work);
	ret = FUNC2(nau8824->dev, nau8824->irq, NULL,
		nau8824_interrupt, IRQF_TRIGGER_LOW | IRQF_ONESHOT,
		"nau8824", nau8824);
	if (ret) {
		FUNC1(nau8824->dev, "Cannot request irq %d (%d)\n",
			nau8824->irq, ret);
	}

	return ret;
}