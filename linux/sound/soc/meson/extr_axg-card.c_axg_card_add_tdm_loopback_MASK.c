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
struct snd_soc_dai_link_component {char* dai_name; char* name; int /*<<< orphan*/  of_node; } ;
struct snd_soc_dai_link {int num_cpus; int num_codecs; int dpcm_capture; int no_pcm; struct snd_soc_dai_link_component* cpus; int /*<<< orphan*/  init; int /*<<< orphan*/ * ops; struct snd_soc_dai_link_component* codecs; scalar_t__ name; scalar_t__ stream_name; } ;
struct snd_soc_card {int /*<<< orphan*/  dev; struct snd_soc_dai_link* dai_link; scalar_t__ num_links; } ;
struct axg_card {int /*<<< orphan*/ * link_data; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (struct axg_card*,scalar_t__) ; 
 int /*<<< orphan*/  axg_card_tdm_be_ops ; 
 int /*<<< orphan*/  axg_card_tdm_dai_lb_init ; 
 struct snd_soc_dai_link_component* FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct axg_card* FUNC4 (struct snd_soc_card*) ; 

__attribute__((used)) static int FUNC5(struct snd_soc_card *card,
				     int *index)
{
	struct axg_card *priv = FUNC4(card);
	struct snd_soc_dai_link *pad = &card->dai_link[*index];
	struct snd_soc_dai_link *lb;
	struct snd_soc_dai_link_component *dlc;
	int ret;

	/* extend links */
	ret = FUNC0(priv, card->num_links + 1);
	if (ret)
		return ret;

	lb = &card->dai_link[*index + 1];

	lb->name = FUNC2(GFP_KERNEL, "%s-lb", pad->name);
	if (!lb->name)
		return -ENOMEM;

	dlc = FUNC1(card->dev, 2 * sizeof(*dlc), GFP_KERNEL);
	if (!dlc)
		return -ENOMEM;

	lb->cpus = &dlc[0];
	lb->codecs = &dlc[1];
	lb->num_cpus = 1;
	lb->num_codecs = 1;

	lb->stream_name = lb->name;
	lb->cpus->of_node = pad->cpus->of_node;
	lb->cpus->dai_name = "TDM Loopback";
	lb->codecs->name = "snd-soc-dummy";
	lb->codecs->dai_name = "snd-soc-dummy-dai";
	lb->dpcm_capture = 1;
	lb->no_pcm = 1;
	lb->ops = &axg_card_tdm_be_ops;
	lb->init = axg_card_tdm_dai_lb_init;

	/* Provide the same link data to the loopback */
	priv->link_data[*index + 1] = priv->link_data[*index];

	/*
	 * axg_card_clean_references() will iterate over this link,
	 * make sure the node count is balanced
	 */
	FUNC3(lb->cpus->of_node);

	/* Let add_links continue where it should */
	*index += 1;

	return 0;
}