#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct sst_ids {int /*<<< orphan*/  format; int /*<<< orphan*/  location_id; } ;
struct sst_dsp_header {int dummy; } ;
struct sst_data {int dummy; } ;
struct TYPE_8__ {int length; int /*<<< orphan*/  command_id; int /*<<< orphan*/  dst; } ;
struct TYPE_5__ {int rate; int s_length; int /*<<< orphan*/  format; } ;
struct TYPE_6__ {TYPE_1__ cfg; } ;
struct TYPE_7__ {TYPE_2__ part; } ;
struct sst_cmd_sba_set_media_loop_map {TYPE_4__ header; scalar_t__ map; TYPE_3__ param; int /*<<< orphan*/  switch_state; } ;
struct snd_soc_dapm_widget {int /*<<< orphan*/  name; struct sst_ids* priv; int /*<<< orphan*/  dapm; } ;
struct snd_soc_component {int /*<<< orphan*/  dev; } ;
struct snd_kcontrol {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SBA_SET_MEDIA_LOOP_MAP ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  SST_DEFAULT_MODULE_ID ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SST_FLAG_BLOCKED ; 
 int /*<<< orphan*/  SST_IPC_IA_CMD ; 
 int /*<<< orphan*/  SST_SWITCH_OFF ; 
 int /*<<< orphan*/  SST_SWITCH_ON ; 
 int /*<<< orphan*/  SST_TASK_SBA ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 struct sst_data* FUNC3 (struct snd_soc_component*) ; 
 struct snd_soc_component* FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct sst_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sst_cmd_sba_set_media_loop_map*,int) ; 
 int FUNC6 (struct snd_soc_dapm_widget*,struct snd_kcontrol*) ; 

__attribute__((used)) static int FUNC7(struct snd_soc_dapm_widget *w,
			struct snd_kcontrol *k, int event)
{
	int ret = 0;
	struct sst_cmd_sba_set_media_loop_map cmd;
	struct snd_soc_component *c = FUNC4(w->dapm);
	struct sst_data *drv = FUNC3(c);
	struct sst_ids *ids = w->priv;

	FUNC2(c->dev, "Enter:widget=%s\n", w->name);
	if (FUNC0(event))
		cmd.switch_state = SST_SWITCH_ON;
	else
		cmd.switch_state = SST_SWITCH_OFF;

	FUNC1(2, cmd.header.dst,
			     ids->location_id, SST_DEFAULT_MODULE_ID);

	cmd.header.command_id = SBA_SET_MEDIA_LOOP_MAP;
	cmd.header.length = sizeof(struct sst_cmd_sba_set_media_loop_map)
				 - sizeof(struct sst_dsp_header);
	cmd.param.part.cfg.rate = 2; /* 48khz */

	cmd.param.part.cfg.format = ids->format; /* stereo/Mono */
	cmd.param.part.cfg.s_length = 1; /* 24bit left justified */
	cmd.map = 0; /* Algo sequence: Gain - DRP - FIR - IIR */

	ret = FUNC5(drv, SST_IPC_IA_CMD, SST_FLAG_BLOCKED,
			      SST_TASK_SBA, 0, &cmd,
			      sizeof(cmd.header) + cmd.header.length);
	if (ret)
		return ret;

	if (FUNC0(event))
		ret = FUNC6(w, k);
	return ret;
}