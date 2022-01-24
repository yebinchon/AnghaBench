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
struct snd_sof_pdata {TYPE_1__* desc; } ;
struct snd_sof_dev {int first_boot; scalar_t__ ipc_timeout; scalar_t__ boot_timeout; int /*<<< orphan*/  probe_work; int /*<<< orphan*/  hw_lock; int /*<<< orphan*/  ipc_lock; int /*<<< orphan*/  route_list; int /*<<< orphan*/  dai_list; int /*<<< orphan*/  widget_list; int /*<<< orphan*/  kcontrol_list; int /*<<< orphan*/  pcm_list; struct snd_sof_pdata* pdata; struct device* dev; } ;
struct device {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  ipc_pcm_params; int /*<<< orphan*/  ipc_msg_data; int /*<<< orphan*/  load_firmware; int /*<<< orphan*/  send_msg; int /*<<< orphan*/  block_write; int /*<<< orphan*/  block_read; int /*<<< orphan*/  run; int /*<<< orphan*/  probe; } ;
struct TYPE_3__ {scalar_t__ ipc_timeout; scalar_t__ boot_timeout; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_SND_SOC_SOF_PROBE_WORK_QUEUE ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ TIMEOUT_DEFAULT_BOOT_MS ; 
 scalar_t__ TIMEOUT_DEFAULT_IPC_MS ; 
 int /*<<< orphan*/  FUNC3 (struct device*,struct snd_sof_dev*) ; 
 struct snd_sof_dev* FUNC4 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC6 (struct snd_sof_dev*) ; 
 int FUNC7 (struct snd_sof_dev*) ; 
 int /*<<< orphan*/  sof_probe_work ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

int FUNC9(struct device *dev, struct snd_sof_pdata *plat_data)
{
	struct snd_sof_dev *sdev;

	sdev = FUNC4(dev, sizeof(*sdev), GFP_KERNEL);
	if (!sdev)
		return -ENOMEM;

	/* initialize sof device */
	sdev->dev = dev;

	sdev->pdata = plat_data;
	sdev->first_boot = true;
	FUNC3(dev, sdev);

	/* check all mandatory ops */
	if (!FUNC6(sdev) || !FUNC6(sdev)->probe || !FUNC6(sdev)->run ||
	    !FUNC6(sdev)->block_read || !FUNC6(sdev)->block_write ||
	    !FUNC6(sdev)->send_msg || !FUNC6(sdev)->load_firmware ||
	    !FUNC6(sdev)->ipc_msg_data || !FUNC6(sdev)->ipc_pcm_params)
		return -EINVAL;

	FUNC0(&sdev->pcm_list);
	FUNC0(&sdev->kcontrol_list);
	FUNC0(&sdev->widget_list);
	FUNC0(&sdev->dai_list);
	FUNC0(&sdev->route_list);
	FUNC8(&sdev->ipc_lock);
	FUNC8(&sdev->hw_lock);

	if (FUNC2(CONFIG_SND_SOC_SOF_PROBE_WORK_QUEUE))
		FUNC1(&sdev->probe_work, sof_probe_work);

	/* set default timeouts if none provided */
	if (plat_data->desc->ipc_timeout == 0)
		sdev->ipc_timeout = TIMEOUT_DEFAULT_IPC_MS;
	else
		sdev->ipc_timeout = plat_data->desc->ipc_timeout;
	if (plat_data->desc->boot_timeout == 0)
		sdev->boot_timeout = TIMEOUT_DEFAULT_BOOT_MS;
	else
		sdev->boot_timeout = plat_data->desc->boot_timeout;

	if (FUNC2(CONFIG_SND_SOC_SOF_PROBE_WORK_QUEUE)) {
		FUNC5(&sdev->probe_work);
		return 0;
	}

	return FUNC7(sdev);
}