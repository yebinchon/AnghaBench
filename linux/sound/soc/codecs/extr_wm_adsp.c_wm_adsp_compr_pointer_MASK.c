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
struct wm_adsp_compr_buf {int avail; scalar_t__ error; } ;
struct wm_adsp_compr {int copied_total; int /*<<< orphan*/  sample_rate; struct wm_adsp_compr_buf* buf; struct wm_adsp* dsp; } ;
struct wm_adsp {int /*<<< orphan*/  pwr_lock; scalar_t__ fatal_error; } ;
struct snd_compr_tstamp {int copied_total; int /*<<< orphan*/  sampling_rate; } ;
struct snd_compr_stream {TYPE_1__* runtime; } ;
struct TYPE_2__ {struct wm_adsp_compr* private_data; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  SNDRV_PCM_STATE_XRUN ; 
 int WM_ADSP_DATA_WORD_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct wm_adsp_compr*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct wm_adsp_compr*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_compr_stream*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct wm_adsp_compr_buf*) ; 
 int FUNC6 (struct wm_adsp_compr_buf*) ; 
 int FUNC7 (struct wm_adsp_compr_buf*) ; 
 int FUNC8 (struct wm_adsp_compr*) ; 

int FUNC9(struct snd_compr_stream *stream,
			  struct snd_compr_tstamp *tstamp)
{
	struct wm_adsp_compr *compr = stream->runtime->private_data;
	struct wm_adsp *dsp = compr->dsp;
	struct wm_adsp_compr_buf *buf;
	int ret = 0;

	FUNC0(compr, "Pointer request\n");

	FUNC2(&dsp->pwr_lock);

	buf = compr->buf;

	if (dsp->fatal_error || !buf || buf->error) {
		FUNC4(stream, SNDRV_PCM_STATE_XRUN);
		ret = -EIO;
		goto out;
	}

	if (buf->avail < FUNC8(compr)) {
		ret = FUNC7(buf);
		if (ret < 0) {
			FUNC1(compr, "Error reading avail: %d\n", ret);
			goto out;
		}

		/*
		 * If we really have less than 1 fragment available tell the
		 * DSP to inform us once a whole fragment is available.
		 */
		if (buf->avail < FUNC8(compr)) {
			ret = FUNC5(buf);
			if (ret < 0) {
				if (buf->error)
					FUNC4(stream,
							SNDRV_PCM_STATE_XRUN);
				goto out;
			}

			ret = FUNC6(buf);
			if (ret < 0) {
				FUNC1(compr, "Failed to re-enable buffer IRQ: %d\n",
					  ret);
				goto out;
			}
		}
	}

	tstamp->copied_total = compr->copied_total;
	tstamp->copied_total += buf->avail * WM_ADSP_DATA_WORD_SIZE;
	tstamp->sampling_rate = compr->sample_rate;

out:
	FUNC3(&dsp->pwr_lock);

	return ret;
}