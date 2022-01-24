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
struct snd_soc_dapm_route {int /*<<< orphan*/  source; int /*<<< orphan*/  sink; } ;
struct snd_soc_card {int num_of_dapm_routes; struct snd_soc_dapm_route* of_dapm_routes; TYPE_1__* dev; } ;
struct device_node {int dummy; } ;
struct TYPE_3__ {struct device_node* of_node; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*,...) ; 
 struct snd_soc_dapm_route* FUNC1 (TYPE_1__*,int,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct device_node*,char const*) ; 
 int FUNC3 (struct device_node*,char const*,int,int /*<<< orphan*/ *) ; 

int FUNC4(struct snd_soc_card *card,
				   const char *propname)
{
	struct device_node *np = card->dev->of_node;
	int num_routes;
	struct snd_soc_dapm_route *routes;
	int i, ret;

	num_routes = FUNC2(np, propname);
	if (num_routes < 0 || num_routes & 1) {
		FUNC0(card->dev,
			"ASoC: Property '%s' does not exist or its length is not even\n",
			propname);
		return -EINVAL;
	}
	num_routes /= 2;
	if (!num_routes) {
		FUNC0(card->dev, "ASoC: Property '%s's length is zero\n",
			propname);
		return -EINVAL;
	}

	routes = FUNC1(card->dev, num_routes, sizeof(*routes),
			      GFP_KERNEL);
	if (!routes) {
		FUNC0(card->dev,
			"ASoC: Could not allocate DAPM route table\n");
		return -EINVAL;
	}

	for (i = 0; i < num_routes; i++) {
		ret = FUNC3(np, propname,
			2 * i, &routes[i].sink);
		if (ret) {
			FUNC0(card->dev,
				"ASoC: Property '%s' index %d could not be read: %d\n",
				propname, 2 * i, ret);
			return -EINVAL;
		}
		ret = FUNC3(np, propname,
			(2 * i) + 1, &routes[i].source);
		if (ret) {
			FUNC0(card->dev,
				"ASoC: Property '%s' index %d could not be read: %d\n",
				propname, (2 * i) + 1, ret);
			return -EINVAL;
		}
	}

	card->num_of_dapm_routes = num_routes;
	card->of_dapm_routes = routes;

	return 0;
}