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
struct TYPE_2__ {int cmd; int size; } ;
struct sof_ipc_free {TYPE_1__ hdr; int /*<<< orphan*/  id; } ;
struct snd_sof_dev {int /*<<< orphan*/  ipc; int /*<<< orphan*/  dev; } ;
struct snd_sof_control {int /*<<< orphan*/  list; struct snd_sof_control* control_data; int /*<<< orphan*/  comp_id; } ;
struct snd_soc_dobj {struct snd_sof_control* private; } ;
struct snd_soc_component {int /*<<< orphan*/  name; } ;
typedef  int /*<<< orphan*/  fcomp ;

/* Variables and functions */
 int SOF_IPC_GLB_TPLG_MSG ; 
 int SOF_IPC_TPLG_COMP_FREE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_sof_control*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct snd_sof_dev* FUNC3 (struct snd_soc_component*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int,struct sof_ipc_free*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct snd_soc_component *scomp,
			      struct snd_soc_dobj *dobj)
{
	struct snd_sof_dev *sdev = FUNC3(scomp);
	struct sof_ipc_free fcomp;
	struct snd_sof_control *scontrol = dobj->private;

	FUNC0(sdev->dev, "tplg: unload control name : %s\n", scomp->name);

	fcomp.hdr.cmd = SOF_IPC_GLB_TPLG_MSG | SOF_IPC_TPLG_COMP_FREE;
	fcomp.hdr.size = sizeof(fcomp);
	fcomp.id = scontrol->comp_id;

	FUNC1(scontrol->control_data);
	FUNC2(&scontrol->list);
	FUNC1(scontrol);
	/* send IPC to the DSP */
	return FUNC4(sdev->ipc,
				  fcomp.hdr.cmd, &fcomp, sizeof(fcomp),
				  NULL, 0);
}