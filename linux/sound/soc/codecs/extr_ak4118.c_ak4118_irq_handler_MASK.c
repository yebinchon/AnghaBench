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
struct snd_soc_component {TYPE_1__* card; } ;
struct snd_kcontrol_new {int /*<<< orphan*/  name; } ;
struct snd_ctl_elem_id {int dummy; } ;
struct snd_kcontrol {struct snd_ctl_elem_id id; } ;
struct ak4118_priv {struct snd_soc_component* component; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {int /*<<< orphan*/  snd_card; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct snd_kcontrol_new*) ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  SNDRV_CTL_EVENT_MASK_VALUE ; 
 struct snd_kcontrol_new* ak4118_iec958_controls ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct snd_ctl_elem_id*) ; 
 struct snd_kcontrol* FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC3(int irq, void *data)
{
	struct ak4118_priv *ak4118 = data;
	struct snd_soc_component *component = ak4118->component;
	struct snd_kcontrol_new *kctl_new;
	struct snd_kcontrol *kctl;
	struct snd_ctl_elem_id *id;
	unsigned int i;

	if (!component)
		return IRQ_NONE;

	for (i = 0; i < FUNC0(ak4118_iec958_controls); i++) {
		kctl_new = &ak4118_iec958_controls[i];
		kctl = FUNC2(component->card,
						 kctl_new->name);
		if (!kctl)
			continue;
		id = &kctl->id;
		FUNC1(component->card->snd_card,
			       SNDRV_CTL_EVENT_MASK_VALUE, id);
	}

	return IRQ_HANDLED;
}