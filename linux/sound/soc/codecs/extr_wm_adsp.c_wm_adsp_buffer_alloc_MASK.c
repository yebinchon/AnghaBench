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
struct wm_adsp_compr_buf {int /*<<< orphan*/  list; struct wm_adsp* dsp; } ;
struct wm_adsp {int /*<<< orphan*/  buffer_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct wm_adsp_compr_buf* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct wm_adsp_compr_buf*) ; 

__attribute__((used)) static struct wm_adsp_compr_buf *FUNC3(struct wm_adsp *dsp)
{
	struct wm_adsp_compr_buf *buf;

	buf = FUNC0(sizeof(*buf), GFP_KERNEL);
	if (!buf)
		return NULL;

	buf->dsp = dsp;

	FUNC2(buf);

	FUNC1(&buf->list, &dsp->buffer_list);

	return buf;
}