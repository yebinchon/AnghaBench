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
struct wm_adsp {size_t fw; int running; int fatal_error; int /*<<< orphan*/  pwr_lock; TYPE_1__* ops; int /*<<< orphan*/  lock_regions; int /*<<< orphan*/  booted; int /*<<< orphan*/  boot_work; } ;
struct snd_soc_dapm_widget {size_t shift; int /*<<< orphan*/  dapm; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  num_caps; } ;
struct TYPE_3__ {int (* enable_core ) (struct wm_adsp*) ;int (* lock_memory ) (struct wm_adsp*,int /*<<< orphan*/ ) ;int (* start_core ) (struct wm_adsp*) ;int /*<<< orphan*/  (* disable_core ) (struct wm_adsp*) ;int /*<<< orphan*/  (* stop_core ) (struct wm_adsp*) ;int /*<<< orphan*/  (* show_fw_status ) (struct wm_adsp*) ;int /*<<< orphan*/  (* stop_watchdog ) (struct wm_adsp*) ;} ;

/* Variables and functions */
 int EIO ; 
#define  SND_SOC_DAPM_POST_PMU 129 
#define  SND_SOC_DAPM_PRE_PMD 128 
 int /*<<< orphan*/  WM_ADSP_FW_EVENT_SHUTDOWN ; 
 int /*<<< orphan*/  FUNC0 (struct wm_adsp*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct wm_adsp*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct wm_adsp* FUNC5 (struct snd_soc_component*) ; 
 struct snd_soc_component* FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (struct wm_adsp*) ; 
 int FUNC8 (struct wm_adsp*,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct wm_adsp*) ; 
 int /*<<< orphan*/  FUNC10 (struct wm_adsp*) ; 
 int /*<<< orphan*/  FUNC11 (struct wm_adsp*) ; 
 int /*<<< orphan*/  FUNC12 (struct wm_adsp*) ; 
 int /*<<< orphan*/  FUNC13 (struct wm_adsp*) ; 
 int /*<<< orphan*/  FUNC14 (struct wm_adsp*) ; 
 int /*<<< orphan*/  FUNC15 (struct wm_adsp*) ; 
 int /*<<< orphan*/  FUNC16 (struct wm_adsp*) ; 
 int FUNC17 (struct wm_adsp*) ; 
 TYPE_2__* wm_adsp_fw ; 
 int /*<<< orphan*/  FUNC18 (struct wm_adsp*,int /*<<< orphan*/ ) ; 
 int FUNC19 (struct wm_adsp*) ; 

int FUNC20(struct snd_soc_dapm_widget *w,
		  struct snd_kcontrol *kcontrol, int event)
{
	struct snd_soc_component *component = FUNC6(w->dapm);
	struct wm_adsp *dsps = FUNC5(component);
	struct wm_adsp *dsp = &dsps[w->shift];
	int ret;

	switch (event) {
	case SND_SOC_DAPM_POST_PMU:
		FUNC2(&dsp->boot_work);

		FUNC3(&dsp->pwr_lock);

		if (!dsp->booted) {
			ret = -EIO;
			goto err;
		}

		if (dsp->ops->enable_core) {
			ret = dsp->ops->enable_core(dsp);
			if (ret != 0)
				goto err;
		}

		/* Sync set controls */
		ret = FUNC19(dsp);
		if (ret != 0)
			goto err;

		if (dsp->ops->lock_memory) {
			ret = dsp->ops->lock_memory(dsp, dsp->lock_regions);
			if (ret != 0) {
				FUNC1(dsp, "Error configuring MPU: %d\n",
					 ret);
				goto err;
			}
		}

		if (dsp->ops->start_core) {
			ret = dsp->ops->start_core(dsp);
			if (ret != 0)
				goto err;
		}

		if (wm_adsp_fw[dsp->fw].num_caps != 0) {
			ret = FUNC17(dsp);
			if (ret < 0)
				goto err;
		}

		dsp->running = true;

		FUNC4(&dsp->pwr_lock);
		break;

	case SND_SOC_DAPM_PRE_PMD:
		/* Tell the firmware to cleanup */
		FUNC18(dsp, WM_ADSP_FW_EVENT_SHUTDOWN);

		if (dsp->ops->stop_watchdog)
			dsp->ops->stop_watchdog(dsp);

		/* Log firmware state, it can be useful for analysis */
		if (dsp->ops->show_fw_status)
			dsp->ops->show_fw_status(dsp);

		FUNC3(&dsp->pwr_lock);

		dsp->running = false;

		if (dsp->ops->stop_core)
			dsp->ops->stop_core(dsp);
		if (dsp->ops->disable_core)
			dsp->ops->disable_core(dsp);

		if (wm_adsp_fw[dsp->fw].num_caps != 0)
			FUNC16(dsp);

		dsp->fatal_error = false;

		FUNC4(&dsp->pwr_lock);

		FUNC0(dsp, "Execution stopped\n");
		break;

	default:
		break;
	}

	return 0;
err:
	if (dsp->ops->stop_core)
		dsp->ops->stop_core(dsp);
	if (dsp->ops->disable_core)
		dsp->ops->disable_core(dsp);
	FUNC4(&dsp->pwr_lock);
	return ret;
}