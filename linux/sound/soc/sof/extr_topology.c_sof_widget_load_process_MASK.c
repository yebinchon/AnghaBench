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
struct sof_ipc_comp_reply {int dummy; } ;
struct sof_ipc_comp_process {int /*<<< orphan*/  type; } ;
struct snd_sof_widget {int dummy; } ;
struct snd_sof_dev {int /*<<< orphan*/  dev; } ;
struct snd_soc_tplg_private {int /*<<< orphan*/  size; int /*<<< orphan*/  array; } ;
struct snd_soc_tplg_dapm_widget {struct snd_soc_tplg_private priv; } ;
struct snd_soc_component {int dummy; } ;
typedef  int /*<<< orphan*/  config ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sof_ipc_comp_process*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  process_tokens ; 
 struct snd_sof_dev* FUNC5 (struct snd_soc_component*) ; 
 int FUNC6 (struct snd_soc_component*,struct sof_ipc_comp_process*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC7 (struct snd_soc_component*,int,struct snd_sof_widget*,struct snd_soc_tplg_dapm_widget*,struct sof_ipc_comp_reply*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct snd_soc_component *scomp, int index,
				   struct snd_sof_widget *swidget,
				   struct snd_soc_tplg_dapm_widget *tw,
				   struct sof_ipc_comp_reply *r)
{
	struct snd_sof_dev *sdev = FUNC5(scomp);
	struct snd_soc_tplg_private *private = &tw->priv;
	struct sof_ipc_comp_process config;
	int ret;

	/* check we have some tokens - we need at least process type */
	if (FUNC3(private->size) == 0) {
		FUNC1(sdev->dev, "error: process tokens not found\n");
		return -EINVAL;
	}

	FUNC4(&config, 0, sizeof(config));

	/* get the process token */
	ret = FUNC6(scomp, &config, process_tokens,
			       FUNC0(process_tokens), private->array,
			       FUNC3(private->size));
	if (ret != 0) {
		FUNC1(sdev->dev, "error: parse process tokens failed %d\n",
			FUNC3(private->size));
		return ret;
	}

	/* now load process specific data and send IPC */
	ret = FUNC7(scomp, index, swidget, tw, r,
			       FUNC2(config.type));
	if (ret < 0) {
		FUNC1(sdev->dev, "error: process loading failed\n");
		return ret;
	}

	return 0;
}