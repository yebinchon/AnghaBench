#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct soc_tplg {int pos; TYPE_5__* comp; int /*<<< orphan*/  dev; int /*<<< orphan*/  ops; int /*<<< orphan*/  index; } ;
struct TYPE_10__ {int /*<<< orphan*/  kcontrol; } ;
struct TYPE_11__ {int /*<<< orphan*/  list; TYPE_3__ control; int /*<<< orphan*/  ops; int /*<<< orphan*/  type; int /*<<< orphan*/  index; } ;
struct soc_enum {int mask; TYPE_4__ dobj; void* shift_r; void* shift_l; int /*<<< orphan*/  reg; } ;
struct TYPE_9__ {int /*<<< orphan*/  info; } ;
struct TYPE_13__ {unsigned int name; TYPE_2__ ops; int /*<<< orphan*/  access; } ;
struct TYPE_8__ {int /*<<< orphan*/  size; } ;
struct snd_soc_tplg_enum_control {TYPE_6__ hdr; int /*<<< orphan*/  mask; int /*<<< orphan*/  channel; int /*<<< orphan*/  items; TYPE_1__ priv; } ;
struct snd_soc_tplg_ctl_hdr {int dummy; } ;
struct snd_kcontrol_new {unsigned int name; long private_value; int access; int /*<<< orphan*/  iface; } ;
typedef  int /*<<< orphan*/  kc ;
struct TYPE_12__ {int /*<<< orphan*/  dobj_list; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SNDRV_CHMAP_FL ; 
 scalar_t__ SNDRV_CTL_ELEM_ID_NAME_MAXLEN ; 
 int /*<<< orphan*/  SNDRV_CTL_ELEM_IFACE_MIXER ; 
 int /*<<< orphan*/  SND_SOC_DOBJ_ENUM ; 
#define  SND_SOC_TPLG_CTL_ENUM 132 
#define  SND_SOC_TPLG_CTL_ENUM_VALUE 131 
#define  SND_SOC_TPLG_DAPM_CTL_ENUM_DOUBLE 130 
#define  SND_SOC_TPLG_DAPM_CTL_ENUM_VALUE 129 
#define  SND_SOC_TPLG_DAPM_CTL_ENUM_VIRT 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,unsigned int,...) ; 
 int /*<<< orphan*/  FUNC3 (struct soc_enum*) ; 
 struct soc_enum* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct snd_kcontrol_new*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct soc_tplg*,TYPE_6__*,unsigned int) ; 
 int FUNC9 (struct soc_tplg*,struct snd_kcontrol_new*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (struct soc_tplg*,int,unsigned int,size_t,char*) ; 
 int FUNC11 (struct soc_enum*,struct snd_soc_tplg_enum_control*) ; 
 int FUNC12 (struct soc_enum*,struct snd_soc_tplg_enum_control*) ; 
 int FUNC13 (struct soc_tplg*,struct snd_kcontrol_new*,struct snd_soc_tplg_ctl_hdr*) ; 
 int FUNC14 (TYPE_6__*,struct snd_kcontrol_new*,struct soc_tplg*) ; 
 scalar_t__ FUNC15 (unsigned int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (struct soc_tplg*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC17 (struct soc_tplg*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC18(struct soc_tplg *tplg, unsigned int count,
	size_t size)
{
	struct snd_soc_tplg_enum_control *ec;
	struct soc_enum *se;
	struct snd_kcontrol_new kc;
	int i, ret, err;

	if (FUNC10(tplg,
		sizeof(struct snd_soc_tplg_enum_control),
		count, size, "enums")) {

		FUNC2(tplg->dev, "ASoC: invalid count %d for enum controls\n",
			count);
		return -EINVAL;
	}

	for (i = 0; i < count; i++) {
		ec = (struct snd_soc_tplg_enum_control *)tplg->pos;

		/* validate kcontrol */
		if (FUNC15(ec->hdr.name, SNDRV_CTL_ELEM_ID_NAME_MAXLEN) ==
			SNDRV_CTL_ELEM_ID_NAME_MAXLEN)
			return -EINVAL;

		se = FUNC4((sizeof(*se)), GFP_KERNEL);
		if (se == NULL)
			return -ENOMEM;

		tplg->pos += (sizeof(struct snd_soc_tplg_enum_control) +
			      FUNC5(ec->priv.size));

		FUNC1(tplg->dev, "ASoC: adding enum kcontrol %s size %d\n",
			ec->hdr.name, ec->items);

		FUNC7(&kc, 0, sizeof(kc));
		kc.name = ec->hdr.name;
		kc.private_value = (long)se;
		kc.iface = SNDRV_CTL_ELEM_IFACE_MIXER;
		kc.access = FUNC5(ec->hdr.access);

		se->reg = FUNC16(tplg, ec->channel, SNDRV_CHMAP_FL);
		se->shift_l = FUNC17(tplg, ec->channel,
			SNDRV_CHMAP_FL);
		se->shift_r = FUNC17(tplg, ec->channel,
			SNDRV_CHMAP_FL);

		se->mask = FUNC5(ec->mask);
		se->dobj.index = tplg->index;
		se->dobj.type = SND_SOC_DOBJ_ENUM;
		se->dobj.ops = tplg->ops;
		FUNC0(&se->dobj.list);

		switch (FUNC5(ec->hdr.ops.info)) {
		case SND_SOC_TPLG_DAPM_CTL_ENUM_VALUE:
		case SND_SOC_TPLG_CTL_ENUM_VALUE:
			err = FUNC12(se, ec);
			if (err < 0) {
				FUNC2(tplg->dev,
					"ASoC: could not create values for %s\n",
					ec->hdr.name);
				FUNC3(se);
				continue;
			}
			/* fall through */
		case SND_SOC_TPLG_CTL_ENUM:
		case SND_SOC_TPLG_DAPM_CTL_ENUM_DOUBLE:
		case SND_SOC_TPLG_DAPM_CTL_ENUM_VIRT:
			err = FUNC11(se, ec);
			if (err < 0) {
				FUNC2(tplg->dev,
					"ASoC: could not create texts for %s\n",
					ec->hdr.name);
				FUNC3(se);
				continue;
			}
			break;
		default:
			FUNC2(tplg->dev,
				"ASoC: invalid enum control type %d for %s\n",
				ec->hdr.ops.info, ec->hdr.name);
			FUNC3(se);
			continue;
		}

		/* map io handlers */
		err = FUNC14(&ec->hdr, &kc, tplg);
		if (err) {
			FUNC8(tplg, &ec->hdr, ec->hdr.name);
			FUNC3(se);
			continue;
		}

		/* pass control to driver for optional further init */
		err = FUNC13(tplg, &kc,
			(struct snd_soc_tplg_ctl_hdr *) ec);
		if (err < 0) {
			FUNC2(tplg->dev, "ASoC: failed to init %s\n",
				ec->hdr.name);
			FUNC3(se);
			continue;
		}

		/* register control here */
		ret = FUNC9(tplg,
			&kc, &se->dobj.control.kcontrol);
		if (ret < 0) {
			FUNC2(tplg->dev, "ASoC: could not add kcontrol %s\n",
				ec->hdr.name);
			FUNC3(se);
			continue;
		}

		FUNC6(&se->dobj.list, &tplg->comp->dobj_list);
	}

	return 0;
}