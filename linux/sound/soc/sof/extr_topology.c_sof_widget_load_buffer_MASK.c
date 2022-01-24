#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sof_ipc_comp_reply {int dummy; } ;
struct TYPE_4__ {int size; int cmd; } ;
struct TYPE_5__ {int pipeline_id; TYPE_1__ hdr; int /*<<< orphan*/  type; int /*<<< orphan*/  id; } ;
struct sof_ipc_buffer {TYPE_2__ comp; int /*<<< orphan*/  caps; int /*<<< orphan*/  size; } ;
struct snd_sof_widget {TYPE_3__* widget; struct sof_ipc_buffer* private; int /*<<< orphan*/  comp_id; } ;
struct snd_sof_dev {int /*<<< orphan*/  dev; int /*<<< orphan*/  ipc; } ;
struct snd_soc_tplg_private {int /*<<< orphan*/  size; int /*<<< orphan*/  array; } ;
struct snd_soc_tplg_dapm_widget {struct snd_soc_tplg_private priv; } ;
struct snd_soc_component {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  SOF_COMP_BUFFER ; 
 int SOF_IPC_GLB_TPLG_MSG ; 
 int SOF_IPC_TPLG_BUFFER_NEW ; 
 int /*<<< orphan*/  buffer_tokens ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sof_ipc_buffer*) ; 
 struct sof_ipc_buffer* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct snd_sof_dev* FUNC6 (struct snd_soc_component*) ; 
 int FUNC7 (int /*<<< orphan*/ ,int,struct sof_ipc_buffer*,int,struct sof_ipc_comp_reply*,int) ; 
 int FUNC8 (struct snd_soc_component*,struct sof_ipc_buffer*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct snd_soc_component *scomp, int index,
				  struct snd_sof_widget *swidget,
				  struct snd_soc_tplg_dapm_widget *tw,
				  struct sof_ipc_comp_reply *r)
{
	struct snd_sof_dev *sdev = FUNC6(scomp);
	struct snd_soc_tplg_private *private = &tw->priv;
	struct sof_ipc_buffer *buffer;
	int ret;

	buffer = FUNC4(sizeof(*buffer), GFP_KERNEL);
	if (!buffer)
		return -ENOMEM;

	/* configure dai IPC message */
	buffer->comp.hdr.size = sizeof(*buffer);
	buffer->comp.hdr.cmd = SOF_IPC_GLB_TPLG_MSG | SOF_IPC_TPLG_BUFFER_NEW;
	buffer->comp.id = swidget->comp_id;
	buffer->comp.type = SOF_COMP_BUFFER;
	buffer->comp.pipeline_id = index;

	ret = FUNC8(scomp, buffer, buffer_tokens,
			       FUNC0(buffer_tokens), private->array,
			       FUNC5(private->size));
	if (ret != 0) {
		FUNC2(sdev->dev, "error: parse buffer tokens failed %d\n",
			private->size);
		FUNC3(buffer);
		return ret;
	}

	FUNC1(sdev->dev, "buffer %s: size %d caps 0x%x\n",
		swidget->widget->name, buffer->size, buffer->caps);

	swidget->private = buffer;

	ret = FUNC7(sdev->ipc, buffer->comp.hdr.cmd, buffer,
				 sizeof(*buffer), r, sizeof(*r));
	if (ret < 0) {
		FUNC2(sdev->dev, "error: buffer %s load failed\n",
			swidget->widget->name);
		FUNC3(buffer);
	}

	return ret;
}