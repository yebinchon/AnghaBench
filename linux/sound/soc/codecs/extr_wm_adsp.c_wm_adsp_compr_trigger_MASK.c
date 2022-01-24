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
struct wm_adsp_compr {int /*<<< orphan*/  buf; struct wm_adsp* dsp; } ;
struct wm_adsp {int /*<<< orphan*/  pwr_lock; } ;
struct snd_compr_stream {TYPE_1__* runtime; } ;
struct TYPE_2__ {struct wm_adsp_compr* private_data; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
#define  SNDRV_PCM_TRIGGER_START 129 
#define  SNDRV_PCM_TRIGGER_STOP 128 
 int /*<<< orphan*/  FUNC1 (struct wm_adsp_compr*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct wm_adsp_compr*,char*,int) ; 
 int /*<<< orphan*/  high_water_mark ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct wm_adsp_compr*) ; 
 int /*<<< orphan*/  FUNC9 (struct wm_adsp_compr*) ; 
 int /*<<< orphan*/  FUNC10 (struct wm_adsp_compr*) ; 

int FUNC11(struct snd_compr_stream *stream, int cmd)
{
	struct wm_adsp_compr *compr = stream->runtime->private_data;
	struct wm_adsp *dsp = compr->dsp;
	int ret = 0;

	FUNC1(compr, "Trigger: %d\n", cmd);

	FUNC3(&dsp->pwr_lock);

	switch (cmd) {
	case SNDRV_PCM_TRIGGER_START:
		if (!FUNC9(compr)) {
			ret = FUNC8(compr);
			if (ret < 0) {
				FUNC2(compr, "Failed to link buffer and stream: %d\n",
					  ret);
				break;
			}
		}

		ret = FUNC6(compr->buf);
		if (ret < 0)
			break;

		/* Trigger the IRQ at one fragment of data */
		ret = FUNC7(compr->buf,
					   FUNC0(high_water_mark),
					   FUNC10(compr));
		if (ret < 0) {
			FUNC2(compr, "Failed to set high water mark: %d\n",
				  ret);
			break;
		}
		break;
	case SNDRV_PCM_TRIGGER_STOP:
		if (FUNC9(compr))
			FUNC5(compr->buf);
		break;
	default:
		ret = -EINVAL;
		break;
	}

	FUNC4(&dsp->pwr_lock);

	return ret;
}