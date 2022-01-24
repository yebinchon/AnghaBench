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
typedef  scalar_t__ u8 ;
struct sst_hsw {int param_idx_r; scalar_t__** param_buf; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  WAVES_PARAM_COUNT ; 
 int WAVES_PARAM_LINES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,scalar_t__*,int /*<<< orphan*/ ) ; 

int FUNC2(struct sst_hsw *hsw, u8 *buf)
{
	u8 id = 0;

	/* read the first matching line from param buffer */
	while (hsw->param_idx_r < WAVES_PARAM_LINES) {
		id = hsw->param_buf[hsw->param_idx_r][0];
		hsw->param_idx_r++;
		if (buf[0] == id) {
			FUNC1(buf, hsw->param_buf[hsw->param_idx_r],
				WAVES_PARAM_COUNT);
			break;
		}
	}
	if (hsw->param_idx_r > WAVES_PARAM_LINES - 1) {
		FUNC0(hsw->dev, "end of buffer, roll to the beginning\n");
		hsw->param_idx_r = 0;
		return 0;
	}
	return 0;
}