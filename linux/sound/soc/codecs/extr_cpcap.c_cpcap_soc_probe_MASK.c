#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct snd_soc_component {TYPE_1__* dev; } ;
struct cpcap_audio {int /*<<< orphan*/  vendor; int /*<<< orphan*/  regmap; struct snd_soc_component* component; } ;
struct TYPE_3__ {int /*<<< orphan*/  parent; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (struct snd_soc_component*,int) ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct cpcap_audio* FUNC3 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_soc_component*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_soc_component*,struct cpcap_audio*) ; 

__attribute__((used)) static int FUNC6(struct snd_soc_component *component)
{
	struct cpcap_audio *cpcap;
	int err;

	cpcap = FUNC3(component->dev, sizeof(*cpcap), GFP_KERNEL);
	if (!cpcap)
		return -ENOMEM;
	FUNC5(component, cpcap);
	cpcap->component = component;

	cpcap->regmap = FUNC2(component->dev->parent, NULL);
	if (!cpcap->regmap)
		return -ENODEV;
	FUNC4(component, cpcap->regmap);

	err = FUNC1(component->dev, cpcap->regmap, &cpcap->vendor);
	if (err)
		return err;

	return FUNC0(component, false);
}