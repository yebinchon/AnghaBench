#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct snd_soc_component {int /*<<< orphan*/  name; TYPE_2__* card; } ;
struct TYPE_7__ {int /*<<< orphan*/  release; int /*<<< orphan*/  parent; int /*<<< orphan*/ * bus; } ;
struct snd_ac97 {TYPE_3__ dev; scalar_t__ num; int /*<<< orphan*/ * bus; } ;
struct TYPE_6__ {TYPE_1__* snd_card; int /*<<< orphan*/  dev; } ;
struct TYPE_5__ {int /*<<< orphan*/  number; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct snd_ac97* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  ac97_bus_type ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 struct snd_ac97* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  soc_ac97_bus ; 
 int /*<<< orphan*/  soc_ac97_device_release ; 

struct snd_ac97 *FUNC4(struct snd_soc_component *component)
{
	struct snd_ac97 *ac97;

	ac97 = FUNC3(sizeof(struct snd_ac97), GFP_KERNEL);
	if (ac97 == NULL)
		return FUNC0(-ENOMEM);

	ac97->bus = &soc_ac97_bus;
	ac97->num = 0;

	ac97->dev.bus = &ac97_bus_type;
	ac97->dev.parent = component->card->dev;
	ac97->dev.release = soc_ac97_device_release;

	FUNC1(&ac97->dev, "%d-%d:%s",
		     component->card->snd_card->number, 0,
		     component->name);

	FUNC2(&ac97->dev);

	return ac97;
}