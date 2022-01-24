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
struct wm_adsp_compr_buf {int error; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct wm_adsp_compr_buf*,char*,int) ; 
 int /*<<< orphan*/  error ; 
 int FUNC2 (struct wm_adsp_compr_buf*,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static int FUNC3(struct wm_adsp_compr_buf *buf)
{
	int ret;

	ret = FUNC2(buf, FUNC0(error), &buf->error);
	if (ret < 0) {
		FUNC1(buf, "Failed to check buffer error: %d\n", ret);
		return ret;
	}
	if (buf->error != 0) {
		FUNC1(buf, "Buffer error occurred: %d\n", buf->error);
		return -EIO;
	}

	return 0;
}