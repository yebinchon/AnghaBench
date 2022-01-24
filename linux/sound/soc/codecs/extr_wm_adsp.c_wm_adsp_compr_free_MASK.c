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
struct wm_adsp_compr {struct wm_adsp_compr* raw_buf; int /*<<< orphan*/  list; struct wm_adsp* dsp; } ;
struct wm_adsp {int /*<<< orphan*/  pwr_lock; } ;
struct snd_compr_stream {TYPE_1__* runtime; } ;
struct TYPE_2__ {struct wm_adsp_compr* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct wm_adsp_compr*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct wm_adsp_compr*) ; 

int FUNC5(struct snd_compr_stream *stream)
{
	struct wm_adsp_compr *compr = stream->runtime->private_data;
	struct wm_adsp *dsp = compr->dsp;

	FUNC2(&dsp->pwr_lock);

	FUNC4(compr);
	FUNC1(&compr->list);

	FUNC0(compr->raw_buf);
	FUNC0(compr);

	FUNC3(&dsp->pwr_lock);

	return 0;
}