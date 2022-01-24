#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct soc_tplg {TYPE_2__* comp; int /*<<< orphan*/  ops; int /*<<< orphan*/  index; int /*<<< orphan*/  dev; } ;
struct snd_soc_tplg_link_config {char* name; char* stream_name; scalar_t__ flags; scalar_t__ flag_mask; scalar_t__ num_hw_configs; scalar_t__ id; } ;
struct TYPE_3__ {int /*<<< orphan*/  list; int /*<<< orphan*/  type; int /*<<< orphan*/  ops; int /*<<< orphan*/  index; } ;
struct snd_soc_dai_link {TYPE_1__ dobj; } ;
struct TYPE_4__ {int /*<<< orphan*/  dobj_list; int /*<<< orphan*/  card; } ;

/* Variables and functions */
 int EINVAL ; 
 size_t SNDRV_CTL_ELEM_ID_NAME_MAXLEN ; 
 int /*<<< orphan*/  SND_SOC_DOBJ_BACKEND_LINK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_soc_dai_link*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_soc_dai_link*,struct snd_soc_tplg_link_config*) ; 
 struct snd_soc_dai_link* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,char const*) ; 
 int FUNC6 (struct soc_tplg*,struct snd_soc_dai_link*,struct snd_soc_tplg_link_config*) ; 
 size_t FUNC7 (char*,size_t) ; 

__attribute__((used)) static int FUNC8(struct soc_tplg *tplg,
	struct snd_soc_tplg_link_config *cfg)
{
	struct snd_soc_dai_link *link;
	const char *name, *stream_name;
	size_t len;
	int ret;

	len = FUNC7(cfg->name, SNDRV_CTL_ELEM_ID_NAME_MAXLEN);
	if (len == SNDRV_CTL_ELEM_ID_NAME_MAXLEN)
		return -EINVAL;
	else if (len)
		name = cfg->name;
	else
		name = NULL;

	len = FUNC7(cfg->stream_name, SNDRV_CTL_ELEM_ID_NAME_MAXLEN);
	if (len == SNDRV_CTL_ELEM_ID_NAME_MAXLEN)
		return -EINVAL;
	else if (len)
		stream_name = cfg->stream_name;
	else
		stream_name = NULL;

	link = FUNC5(tplg->comp->card, FUNC1(cfg->id),
				     name, stream_name);
	if (!link) {
		FUNC0(tplg->dev, "ASoC: physical link %s (id %d) not exist\n",
			name, cfg->id);
		return -EINVAL;
	}

	/* hw format */
	if (cfg->num_hw_configs)
		FUNC4(link, cfg);

	/* flags */
	if (cfg->flag_mask)
		FUNC3(link,
			       FUNC1(cfg->flag_mask),
			       FUNC1(cfg->flags));

	/* pass control to component driver for optional further init */
	ret = FUNC6(tplg, link, cfg);
	if (ret < 0) {
		FUNC0(tplg->dev, "ASoC: physical link loading failed\n");
		return ret;
	}

	/* for unloading it in snd_soc_tplg_component_remove */
	link->dobj.index = tplg->index;
	link->dobj.ops = tplg->ops;
	link->dobj.type = SND_SOC_DOBJ_BACKEND_LINK;
	FUNC2(&link->dobj.list, &tplg->comp->dobj_list);

	return 0;
}