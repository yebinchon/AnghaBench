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
struct timed_send {scalar_t__ delay_us; char data; } ;
typedef  int /*<<< orphan*/  rbuf ;
typedef  int int64_t ;

/* Variables and functions */
 int cfg_variance_us ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char,int,int) ; 
 int FUNC2 () ; 
 int glob_tstart ; 
 int FUNC3 (int) ; 
 int FUNC4 (int,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void FUNC5(int fdr, struct timed_send *ts)
{
	int64_t tstop, texpect;
	char rbuf[2];
	int ret;

	ret = FUNC4(fdr, rbuf, sizeof(rbuf), 0);
	if (ret == -1)
		FUNC0(1, errno, "read");
	if (ret != 1)
		FUNC0(1, 0, "read: %dB", ret);

	tstop = (FUNC2() - glob_tstart) / 1000;
	texpect = ts->delay_us >= 0 ? ts->delay_us : 0;

	FUNC1(stderr, "payload:%c delay:%d expected:%d (us)\n",
			rbuf[0], tstop, texpect);

	if (rbuf[0] != ts->data)
		FUNC0(1, 0, "payload mismatch. expected %c", ts->data);

	if (FUNC3(tstop - texpect) > cfg_variance_us)
		FUNC0(1, 0, "exceeds variance (%d us)", cfg_variance_us);
}