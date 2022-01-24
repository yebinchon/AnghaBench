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
struct snd_soc_dai_link_component {int /*<<< orphan*/  of_node; int /*<<< orphan*/  dai_name; } ;
struct snd_soc_dai_link {int num_cpus; int /*<<< orphan*/ * params; struct snd_soc_dai_link_component* cpus; } ;
struct snd_soc_card {int /*<<< orphan*/  dev; struct snd_soc_dai_link* dai_link; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct snd_soc_card*,struct device_node*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct snd_soc_card*,struct device_node*,int*) ; 
 int FUNC6 (struct snd_soc_card*,struct snd_soc_dai_link*,struct device_node*) ; 
 int FUNC7 (struct snd_soc_card*,struct snd_soc_dai_link*,struct device_node*,int) ; 
 int /*<<< orphan*/  codec_params ; 
 struct snd_soc_dai_link_component* FUNC8 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct snd_soc_card *card, struct device_node *np,
			     int *index)
{
	struct snd_soc_dai_link *dai_link = &card->dai_link[*index];
	struct snd_soc_dai_link_component *cpu;
	int ret;

	cpu = FUNC8(card->dev, sizeof(*cpu), GFP_KERNEL);
	if (!cpu)
		return -ENOMEM;

	dai_link->cpus = cpu;
	dai_link->num_cpus = 1;

	ret = FUNC4(card, np, &dai_link->cpus->of_node,
				 &dai_link->cpus->dai_name);
	if (ret)
		return ret;

	if (FUNC2(dai_link->cpus->of_node))
		ret = FUNC7(card, dai_link, np, true);
	else if (FUNC0(dai_link->cpus->of_node))
		ret = FUNC7(card, dai_link, np, false);
	else
		ret = FUNC6(card, dai_link, np);

	if (ret)
		return ret;

	if (FUNC3(dai_link->cpus->of_node))
		ret = FUNC5(card, np, index);
	else if (FUNC1(dai_link->cpus->of_node))
		dai_link->params = &codec_params;

	return ret;
}