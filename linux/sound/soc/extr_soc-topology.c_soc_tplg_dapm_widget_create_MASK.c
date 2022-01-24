#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  template ;
struct soc_tplg {int pos; TYPE_5__* comp; int /*<<< orphan*/  index; int /*<<< orphan*/  ops; int /*<<< orphan*/  dev; } ;
struct TYPE_6__ {scalar_t__ size; } ;
struct snd_soc_tplg_dapm_widget {scalar_t__ id; scalar_t__ reg; scalar_t__ shift; scalar_t__ mask; scalar_t__ subseq; scalar_t__ ignore_suspend; scalar_t__ num_kcontrols; int /*<<< orphan*/  name; TYPE_1__ priv; int /*<<< orphan*/  event_flags; scalar_t__ invert; int /*<<< orphan*/  sname; } ;
struct TYPE_7__ {scalar_t__ info; int /*<<< orphan*/  put; int /*<<< orphan*/  get; } ;
struct snd_soc_tplg_ctl_hdr {TYPE_2__ ops; int /*<<< orphan*/  type; } ;
struct TYPE_8__ {unsigned int kcontrol_type; } ;
struct TYPE_9__ {int /*<<< orphan*/  list; int /*<<< orphan*/  index; int /*<<< orphan*/  ops; TYPE_3__ widget; int /*<<< orphan*/  type; } ;
struct snd_soc_dapm_widget {int id; int reg; int shift; int mask; int subseq; int on_val; int off_val; int ignore_suspend; int num_kcontrols; void* name; void* sname; TYPE_4__ dobj; int /*<<< orphan*/  kcontrol_news; int /*<<< orphan*/  event_flags; } ;
struct snd_soc_dapm_context {int dummy; } ;
struct snd_soc_card {scalar_t__ instantiated; } ;
struct TYPE_10__ {int /*<<< orphan*/  dobj_list; struct snd_soc_card* card; struct snd_soc_dapm_context dapm; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct snd_soc_dapm_widget*) ; 
 int FUNC1 (struct snd_soc_dapm_widget*) ; 
 scalar_t__ SNDRV_CTL_ELEM_ID_NAME_MAXLEN ; 
 int /*<<< orphan*/  SND_SOC_DOBJ_WIDGET ; 
#define  SND_SOC_TPLG_CTL_BYTES 139 
#define  SND_SOC_TPLG_CTL_ENUM 138 
#define  SND_SOC_TPLG_CTL_ENUM_VALUE 137 
#define  SND_SOC_TPLG_CTL_RANGE 136 
#define  SND_SOC_TPLG_CTL_STROBE 135 
#define  SND_SOC_TPLG_CTL_VOLSW 134 
#define  SND_SOC_TPLG_CTL_VOLSW_SX 133 
#define  SND_SOC_TPLG_CTL_VOLSW_XR_SX 132 
#define  SND_SOC_TPLG_DAPM_CTL_ENUM_DOUBLE 131 
#define  SND_SOC_TPLG_DAPM_CTL_ENUM_VALUE 130 
#define  SND_SOC_TPLG_DAPM_CTL_ENUM_VIRT 129 
#define  SND_SOC_TPLG_DAPM_CTL_VOLSW 128 
 unsigned int SND_SOC_TPLG_TYPE_BYTES ; 
 unsigned int SND_SOC_TPLG_TYPE_ENUM ; 
 unsigned int SND_SOC_TPLG_TYPE_MIXER ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 void* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct snd_soc_dapm_widget*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (struct snd_soc_dapm_widget*) ; 
 struct snd_soc_dapm_widget* FUNC12 (struct snd_soc_dapm_context*,struct snd_soc_dapm_widget*) ; 
 struct snd_soc_dapm_widget* FUNC13 (struct snd_soc_dapm_context*,struct snd_soc_dapm_widget*) ; 
 int /*<<< orphan*/  FUNC14 (struct snd_soc_dapm_widget*) ; 
 int /*<<< orphan*/  FUNC15 (struct soc_tplg*,int) ; 
 int /*<<< orphan*/  FUNC16 (struct soc_tplg*,int) ; 
 int /*<<< orphan*/  FUNC17 (struct soc_tplg*,int) ; 
 int FUNC18 (struct soc_tplg*,struct snd_soc_dapm_widget*,struct snd_soc_tplg_dapm_widget*) ; 
 int FUNC19 (struct soc_tplg*,struct snd_soc_dapm_widget*,struct snd_soc_tplg_dapm_widget*) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC21(struct soc_tplg *tplg,
	struct snd_soc_tplg_dapm_widget *w)
{
	struct snd_soc_dapm_context *dapm = &tplg->comp->dapm;
	struct snd_soc_dapm_widget template, *widget;
	struct snd_soc_tplg_ctl_hdr *control_hdr;
	struct snd_soc_card *card = tplg->comp->card;
	unsigned int kcontrol_type;
	int ret = 0;

	if (FUNC20(w->name, SNDRV_CTL_ELEM_ID_NAME_MAXLEN) ==
		SNDRV_CTL_ELEM_ID_NAME_MAXLEN)
		return -EINVAL;
	if (FUNC20(w->sname, SNDRV_CTL_ELEM_ID_NAME_MAXLEN) ==
		SNDRV_CTL_ELEM_ID_NAME_MAXLEN)
		return -EINVAL;

	FUNC2(tplg->dev, "ASoC: creating DAPM widget %s id %d\n",
		w->name, w->id);

	FUNC10(&template, 0, sizeof(template));

	/* map user to kernel widget ID */
	template.id = FUNC4(FUNC8(w->id));
	if ((int)template.id < 0)
		return template.id;

	/* strings are allocated here, but used and freed by the widget */
	template.name = FUNC6(w->name, GFP_KERNEL);
	if (!template.name)
		return -ENOMEM;
	template.sname = FUNC6(w->sname, GFP_KERNEL);
	if (!template.sname) {
		ret = -ENOMEM;
		goto err;
	}
	template.reg = FUNC8(w->reg);
	template.shift = FUNC8(w->shift);
	template.mask = FUNC8(w->mask);
	template.subseq = FUNC8(w->subseq);
	template.on_val = w->invert ? 0 : 1;
	template.off_val = w->invert ? 1 : 0;
	template.ignore_suspend = FUNC8(w->ignore_suspend);
	template.event_flags = FUNC7(w->event_flags);
	template.dobj.index = tplg->index;

	tplg->pos +=
		(sizeof(struct snd_soc_tplg_dapm_widget) +
		 FUNC8(w->priv.size));

	if (w->num_kcontrols == 0) {
		kcontrol_type = 0;
		template.num_kcontrols = 0;
		goto widget;
	}

	control_hdr = (struct snd_soc_tplg_ctl_hdr *)tplg->pos;
	FUNC2(tplg->dev, "ASoC: template %s has %d controls of type %x\n",
		w->name, w->num_kcontrols, control_hdr->type);

	switch (FUNC8(control_hdr->ops.info)) {
	case SND_SOC_TPLG_CTL_VOLSW:
	case SND_SOC_TPLG_CTL_STROBE:
	case SND_SOC_TPLG_CTL_VOLSW_SX:
	case SND_SOC_TPLG_CTL_VOLSW_XR_SX:
	case SND_SOC_TPLG_CTL_RANGE:
	case SND_SOC_TPLG_DAPM_CTL_VOLSW:
		kcontrol_type = SND_SOC_TPLG_TYPE_MIXER;  /* volume mixer */
		template.num_kcontrols = FUNC8(w->num_kcontrols);
		template.kcontrol_news =
			FUNC17(tplg,
			template.num_kcontrols);
		if (!template.kcontrol_news) {
			ret = -ENOMEM;
			goto hdr_err;
		}
		break;
	case SND_SOC_TPLG_CTL_ENUM:
	case SND_SOC_TPLG_CTL_ENUM_VALUE:
	case SND_SOC_TPLG_DAPM_CTL_ENUM_DOUBLE:
	case SND_SOC_TPLG_DAPM_CTL_ENUM_VIRT:
	case SND_SOC_TPLG_DAPM_CTL_ENUM_VALUE:
		kcontrol_type = SND_SOC_TPLG_TYPE_ENUM;	/* enumerated mixer */
		template.num_kcontrols = FUNC8(w->num_kcontrols);
		template.kcontrol_news =
			FUNC16(tplg,
			template.num_kcontrols);
		if (!template.kcontrol_news) {
			ret = -ENOMEM;
			goto hdr_err;
		}
		break;
	case SND_SOC_TPLG_CTL_BYTES:
		kcontrol_type = SND_SOC_TPLG_TYPE_BYTES; /* bytes control */
		template.num_kcontrols = FUNC8(w->num_kcontrols);
		template.kcontrol_news =
			FUNC15(tplg,
				template.num_kcontrols);
		if (!template.kcontrol_news) {
			ret = -ENOMEM;
			goto hdr_err;
		}
		break;
	default:
		FUNC3(tplg->dev, "ASoC: invalid widget control type %d:%d:%d\n",
			control_hdr->ops.get, control_hdr->ops.put,
			FUNC8(control_hdr->ops.info));
		ret = -EINVAL;
		goto hdr_err;
	}

widget:
	ret = FUNC18(tplg, &template, w);
	if (ret < 0)
		goto hdr_err;

	/* card dapm mutex is held by the core if we are loading topology
	 * data during sound card init. */
	if (card->instantiated)
		widget = FUNC12(dapm, &template);
	else
		widget = FUNC13(dapm, &template);
	if (FUNC0(widget)) {
		ret = FUNC1(widget);
		goto hdr_err;
	}

	widget->dobj.type = SND_SOC_DOBJ_WIDGET;
	widget->dobj.widget.kcontrol_type = kcontrol_type;
	widget->dobj.ops = tplg->ops;
	widget->dobj.index = tplg->index;
	FUNC9(&widget->dobj.list, &tplg->comp->dobj_list);

	ret = FUNC19(tplg, widget, w);
	if (ret < 0)
		goto ready_err;

	FUNC5(template.sname);
	FUNC5(template.name);

	return 0;

ready_err:
	FUNC14(widget);
	FUNC11(widget);
hdr_err:
	FUNC5(template.sname);
err:
	FUNC5(template.name);
	return ret;
}