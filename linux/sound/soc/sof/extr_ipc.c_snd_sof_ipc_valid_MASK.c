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
struct sof_ipc_fw_version {scalar_t__ abi_version; int /*<<< orphan*/  time; int /*<<< orphan*/  date; int /*<<< orphan*/  build; int /*<<< orphan*/  tag; int /*<<< orphan*/  micro; int /*<<< orphan*/  minor; int /*<<< orphan*/  major; } ;
struct sof_ipc_fw_ready {int flags; struct sof_ipc_fw_version version; } ;
struct snd_sof_dev {int /*<<< orphan*/  fw_version; int /*<<< orphan*/  dev; struct sof_ipc_fw_ready fw_ready; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_SND_SOC_SOF_STRICT_ABI_CHECKS ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 char* SOF_ABI_MAJOR ; 
 char* SOF_ABI_MINOR ; 
 char* SOF_ABI_PATCH ; 
 scalar_t__ SOF_ABI_VERSION ; 
 scalar_t__ FUNC1 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int SOF_IPC_INFO_BUILD ; 
 int SOF_IPC_INFO_GDB ; 
 int SOF_IPC_INFO_LOCKS ; 
 int SOF_IPC_INFO_LOCKSV ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,struct sof_ipc_fw_version*,int) ; 

int FUNC9(struct snd_sof_dev *sdev)
{
	struct sof_ipc_fw_ready *ready = &sdev->fw_ready;
	struct sof_ipc_fw_version *v = &ready->version;

	FUNC6(sdev->dev,
		 "Firmware info: version %d:%d:%d-%s\n",  v->major, v->minor,
		 v->micro, v->tag);
	FUNC6(sdev->dev,
		 "Firmware: ABI %d:%d:%d Kernel ABI %d:%d:%d\n",
		 FUNC2(v->abi_version),
		 FUNC3(v->abi_version),
		 FUNC4(v->abi_version),
		 SOF_ABI_MAJOR, SOF_ABI_MINOR, SOF_ABI_PATCH);

	if (FUNC1(SOF_ABI_VERSION, v->abi_version)) {
		FUNC5(sdev->dev, "error: incompatible FW ABI version\n");
		return -EINVAL;
	}

	if (v->abi_version > SOF_ABI_VERSION) {
		if (!FUNC0(CONFIG_SND_SOC_SOF_STRICT_ABI_CHECKS)) {
			FUNC7(sdev->dev, "warn: FW ABI is more recent than kernel\n");
		} else {
			FUNC5(sdev->dev, "error: FW ABI is more recent than kernel\n");
			return -EINVAL;
		}
	}

	if (ready->flags & SOF_IPC_INFO_BUILD) {
		FUNC6(sdev->dev,
			 "Firmware debug build %d on %s-%s - options:\n"
			 " GDB: %s\n"
			 " lock debug: %s\n"
			 " lock vdebug: %s\n",
			 v->build, v->date, v->time,
			 (ready->flags & SOF_IPC_INFO_GDB) ?
				"enabled" : "disabled",
			 (ready->flags & SOF_IPC_INFO_LOCKS) ?
				"enabled" : "disabled",
			 (ready->flags & SOF_IPC_INFO_LOCKSV) ?
				"enabled" : "disabled");
	}

	/* copy the fw_version into debugfs at first boot */
	FUNC8(&sdev->fw_version, v, sizeof(*v));

	return 0;
}