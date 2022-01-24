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
struct snd_soc_dobj {struct snd_sof_control* private; } ;
struct soc_mixer_control {struct snd_soc_dobj dobj; } ;
struct soc_enum {struct snd_soc_dobj dobj; } ;
struct soc_bytes_ext {struct snd_soc_dobj dobj; } ;
struct snd_sof_dev {int /*<<< orphan*/  kcontrol_list; int /*<<< orphan*/  dev; } ;
struct snd_sof_control {int /*<<< orphan*/  list; struct snd_sof_dev* sdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  info; int /*<<< orphan*/  put; int /*<<< orphan*/  get; } ;
struct snd_soc_tplg_ctl_hdr {TYPE_1__ ops; int /*<<< orphan*/  name; int /*<<< orphan*/  type; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol_new {scalar_t__ private_value; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
#define  SND_SOC_TPLG_CTL_BYTES 140 
#define  SND_SOC_TPLG_CTL_ENUM 139 
#define  SND_SOC_TPLG_CTL_ENUM_VALUE 138 
#define  SND_SOC_TPLG_CTL_RANGE 137 
#define  SND_SOC_TPLG_CTL_STROBE 136 
#define  SND_SOC_TPLG_CTL_VOLSW 135 
#define  SND_SOC_TPLG_CTL_VOLSW_SX 134 
#define  SND_SOC_TPLG_CTL_VOLSW_XR_SX 133 
#define  SND_SOC_TPLG_DAPM_CTL_ENUM_DOUBLE 132 
#define  SND_SOC_TPLG_DAPM_CTL_ENUM_VALUE 131 
#define  SND_SOC_TPLG_DAPM_CTL_ENUM_VIRT 130 
#define  SND_SOC_TPLG_DAPM_CTL_PIN 129 
#define  SND_SOC_TPLG_DAPM_CTL_VOLSW 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_sof_control*) ; 
 struct snd_sof_control* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct snd_sof_dev* FUNC6 (struct snd_soc_component*) ; 
 int FUNC7 (struct snd_soc_component*,struct snd_sof_control*,struct snd_kcontrol_new*,struct snd_soc_tplg_ctl_hdr*) ; 
 int FUNC8 (struct snd_soc_component*,struct snd_sof_control*,struct snd_kcontrol_new*,struct snd_soc_tplg_ctl_hdr*) ; 
 int FUNC9 (struct snd_soc_component*,struct snd_sof_control*,struct snd_kcontrol_new*,struct snd_soc_tplg_ctl_hdr*) ; 

__attribute__((used)) static int FUNC10(struct snd_soc_component *scomp, int index,
			    struct snd_kcontrol_new *kc,
			    struct snd_soc_tplg_ctl_hdr *hdr)
{
	struct soc_mixer_control *sm;
	struct soc_bytes_ext *sbe;
	struct soc_enum *se;
	struct snd_sof_dev *sdev = FUNC6(scomp);
	struct snd_soc_dobj *dobj;
	struct snd_sof_control *scontrol;
	int ret = -EINVAL;

	FUNC0(sdev->dev, "tplg: load control type %d name : %s\n",
		hdr->type, hdr->name);

	scontrol = FUNC3(sizeof(*scontrol), GFP_KERNEL);
	if (!scontrol)
		return -ENOMEM;

	scontrol->sdev = sdev;

	switch (FUNC4(hdr->ops.info)) {
	case SND_SOC_TPLG_CTL_VOLSW:
	case SND_SOC_TPLG_CTL_VOLSW_SX:
	case SND_SOC_TPLG_CTL_VOLSW_XR_SX:
		sm = (struct soc_mixer_control *)kc->private_value;
		dobj = &sm->dobj;
		ret = FUNC9(scomp, scontrol, kc, hdr);
		break;
	case SND_SOC_TPLG_CTL_BYTES:
		sbe = (struct soc_bytes_ext *)kc->private_value;
		dobj = &sbe->dobj;
		ret = FUNC7(scomp, scontrol, kc, hdr);
		break;
	case SND_SOC_TPLG_CTL_ENUM:
	case SND_SOC_TPLG_CTL_ENUM_VALUE:
		se = (struct soc_enum *)kc->private_value;
		dobj = &se->dobj;
		ret = FUNC8(scomp, scontrol, kc, hdr);
		break;
	case SND_SOC_TPLG_CTL_RANGE:
	case SND_SOC_TPLG_CTL_STROBE:
	case SND_SOC_TPLG_DAPM_CTL_VOLSW:
	case SND_SOC_TPLG_DAPM_CTL_ENUM_DOUBLE:
	case SND_SOC_TPLG_DAPM_CTL_ENUM_VIRT:
	case SND_SOC_TPLG_DAPM_CTL_ENUM_VALUE:
	case SND_SOC_TPLG_DAPM_CTL_PIN:
	default:
		FUNC1(sdev->dev, "control type not supported %d:%d:%d\n",
			 hdr->ops.get, hdr->ops.put, hdr->ops.info);
		FUNC2(scontrol);
		return 0;
	}

	dobj->private = scontrol;
	FUNC5(&scontrol->list, &sdev->kcontrol_list);
	return ret;
}