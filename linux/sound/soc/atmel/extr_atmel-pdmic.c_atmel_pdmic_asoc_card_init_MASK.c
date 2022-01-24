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
struct snd_soc_dai_link_component {void* name; void* dai_name; } ;
struct snd_soc_dai_link {int num_cpus; int num_codecs; int num_platforms; char* name; char* stream_name; struct snd_soc_dai_link_component* platforms; struct snd_soc_dai_link_component* codecs; struct snd_soc_dai_link_component* cpus; } ;
struct snd_soc_card {int num_links; struct device* dev; int /*<<< orphan*/  name; struct snd_soc_dai_link* dai_link; } ;
struct device {int dummy; } ;
struct atmel_pdmic {TYPE_1__* pdata; } ;
struct TYPE_2__ {int /*<<< orphan*/  card_name; } ;

/* Variables and functions */
 void* ATMEL_PDMIC_CODEC_DAI_NAME ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 void* FUNC0 (struct device*) ; 
 void* FUNC1 (struct device*,int,int /*<<< orphan*/ ) ; 
 struct atmel_pdmic* FUNC2 (struct snd_soc_card*) ; 

__attribute__((used)) static int FUNC3(struct device *dev,
				struct snd_soc_card *card)
{
	struct snd_soc_dai_link *dai_link;
	struct atmel_pdmic *dd = FUNC2(card);
	struct snd_soc_dai_link_component *comp;

	dai_link = FUNC1(dev, sizeof(*dai_link), GFP_KERNEL);
	if (!dai_link)
		return -ENOMEM;

	comp = FUNC1(dev, 3 * sizeof(*comp), GFP_KERNEL);
	if (!comp)
		return -ENOMEM;

	dai_link->cpus		= &comp[0];
	dai_link->codecs	= &comp[1];
	dai_link->platforms	= &comp[2];

	dai_link->num_cpus	= 1;
	dai_link->num_codecs	= 1;
	dai_link->num_platforms	= 1;

	dai_link->name			= "PDMIC";
	dai_link->stream_name		= "PDMIC PCM";
	dai_link->codecs->dai_name	= ATMEL_PDMIC_CODEC_DAI_NAME;
	dai_link->cpus->dai_name	= FUNC0(dev);
	dai_link->codecs->name		= FUNC0(dev);
	dai_link->platforms->name	= FUNC0(dev);

	card->dai_link	= dai_link;
	card->num_links	= 1;
	card->name	= dd->pdata->card_name;
	card->dev	= dev;

	return 0;
}