#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct sof_ipc_comp_reply {int dummy; } ;
struct TYPE_7__ {int size; int cmd; } ;
struct TYPE_8__ {int pipeline_id; TYPE_2__ hdr; int /*<<< orphan*/  type; int /*<<< orphan*/  id; } ;
struct TYPE_6__ {int size; } ;
struct TYPE_9__ {TYPE_1__ hdr; } ;
struct sof_ipc_comp_mixer {TYPE_3__ comp; TYPE_4__ config; } ;
struct snd_sof_widget {struct sof_ipc_comp_mixer* private; int /*<<< orphan*/  comp_id; } ;
struct snd_sof_dev {int /*<<< orphan*/  ipc; int /*<<< orphan*/  dev; } ;
struct snd_soc_tplg_private {int /*<<< orphan*/  size; int /*<<< orphan*/  array; } ;
struct snd_soc_tplg_dapm_widget {struct snd_soc_tplg_private priv; } ;
struct snd_soc_component {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  SOF_COMP_MIXER ; 
 int SOF_IPC_GLB_TPLG_MSG ; 
 int SOF_IPC_TPLG_COMP_NEW ; 
 int /*<<< orphan*/  comp_tokens ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sof_ipc_comp_mixer*) ; 
 struct sof_ipc_comp_mixer* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct snd_sof_dev* FUNC5 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_soc_component*,TYPE_4__*) ; 
 int FUNC7 (int /*<<< orphan*/ ,int,struct sof_ipc_comp_mixer*,int,struct sof_ipc_comp_reply*,int) ; 
 int FUNC8 (struct snd_soc_component*,TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct snd_soc_component *scomp, int index,
				 struct snd_sof_widget *swidget,
				 struct snd_soc_tplg_dapm_widget *tw,
				 struct sof_ipc_comp_reply *r)
{
	struct snd_sof_dev *sdev = FUNC5(scomp);
	struct snd_soc_tplg_private *private = &tw->priv;
	struct sof_ipc_comp_mixer *mixer;
	int ret;

	mixer = FUNC3(sizeof(*mixer), GFP_KERNEL);
	if (!mixer)
		return -ENOMEM;

	/* configure mixer IPC message */
	mixer->comp.hdr.size = sizeof(*mixer);
	mixer->comp.hdr.cmd = SOF_IPC_GLB_TPLG_MSG | SOF_IPC_TPLG_COMP_NEW;
	mixer->comp.id = swidget->comp_id;
	mixer->comp.type = SOF_COMP_MIXER;
	mixer->comp.pipeline_id = index;
	mixer->config.hdr.size = sizeof(mixer->config);

	ret = FUNC8(scomp, &mixer->config, comp_tokens,
			       FUNC0(comp_tokens), private->array,
			       FUNC4(private->size));
	if (ret != 0) {
		FUNC1(sdev->dev, "error: parse mixer.cfg tokens failed %d\n",
			private->size);
		FUNC2(mixer);
		return ret;
	}

	FUNC6(scomp, &mixer->config);

	swidget->private = mixer;

	ret = FUNC7(sdev->ipc, mixer->comp.hdr.cmd, mixer,
				 sizeof(*mixer), r, sizeof(*r));
	if (ret < 0)
		FUNC2(mixer);

	return ret;
}