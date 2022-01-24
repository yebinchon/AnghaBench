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
struct snd_soc_card {TYPE_1__* dev; } ;
struct device_node {int dummy; } ;
typedef  int /*<<< orphan*/  prop ;
struct TYPE_2__ {struct device_node* of_node; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct device_node*,char*) ; 
 int FUNC1 (struct snd_soc_card*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,char*,char*) ; 

int FUNC3(struct snd_soc_card *card,
			      char *prefix)
{
	struct device_node *node = card->dev->of_node;
	char prop[128];

	if (!prefix)
		prefix = "";

	FUNC2(prop, sizeof(prop), "%s%s", prefix, "widgets");

	if (FUNC0(node, prop))
		return FUNC1(card, prop);

	/* no widgets is not error */
	return 0;
}