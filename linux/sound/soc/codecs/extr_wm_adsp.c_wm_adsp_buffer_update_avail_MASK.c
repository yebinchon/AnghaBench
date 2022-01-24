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
typedef  int /*<<< orphan*/  u32 ;
struct wm_adsp_compr_buf {int read_index; int avail; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int WM_ADSP_DATA_WORD_SIZE ; 
 int /*<<< orphan*/  FUNC1 (struct wm_adsp_compr_buf*,char*,...) ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct wm_adsp_compr_buf*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct wm_adsp_compr_buf*) ; 

__attribute__((used)) static int FUNC5(struct wm_adsp_compr_buf *buf)
{
	u32 next_read_index, next_write_index;
	int write_index, read_index, avail;
	int ret;

	/* Only sync read index if we haven't already read a valid index */
	if (buf->read_index < 0) {
		ret = FUNC3(buf,
				FUNC0(next_read_index),
				&next_read_index);
		if (ret < 0)
			return ret;

		read_index = FUNC2(next_read_index, 23);

		if (read_index < 0) {
			FUNC1(buf, "Avail check on unstarted stream\n");
			return 0;
		}

		buf->read_index = read_index;
	}

	ret = FUNC3(buf, FUNC0(next_write_index),
			&next_write_index);
	if (ret < 0)
		return ret;

	write_index = FUNC2(next_write_index, 23);

	avail = write_index - buf->read_index;
	if (avail < 0)
		avail += FUNC4(buf);

	FUNC1(buf, "readindex=0x%x, writeindex=0x%x, avail=%d\n",
		  buf->read_index, write_index, avail * WM_ADSP_DATA_WORD_SIZE);

	buf->avail = avail;

	return 0;
}