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
struct ubifs_wbuf {int /*<<< orphan*/  io_mutex; int /*<<< orphan*/  jhead; int /*<<< orphan*/  need_sync; } ;
struct ubifs_info {int jhead_cnt; TYPE_1__* jheads; scalar_t__ ro_error; scalar_t__ need_wbuf_sync; int /*<<< orphan*/  ro_mount; int /*<<< orphan*/  ro_media; } ;
struct TYPE_2__ {struct ubifs_wbuf wbuf; } ;

/* Variables and functions */
 int EROFS ; 
 int /*<<< orphan*/  FUNC0 (struct ubifs_wbuf*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct ubifs_info*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct ubifs_info*,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct ubifs_info*,int) ; 
 int FUNC9 (struct ubifs_wbuf*) ; 

int FUNC10(struct ubifs_info *c)
{
	int err, i;

	FUNC6(c, !c->ro_media && !c->ro_mount);
	if (!c->need_wbuf_sync)
		return 0;
	c->need_wbuf_sync = 0;

	if (c->ro_error) {
		err = -EROFS;
		goto out_timers;
	}

	FUNC2("synchronize");
	for (i = 0; i < c->jhead_cnt; i++) {
		struct ubifs_wbuf *wbuf = &c->jheads[i].wbuf;

		FUNC1();

		/*
		 * If the mutex is locked then wbuf is being changed, so
		 * synchronization is not necessary.
		 */
		if (FUNC3(&wbuf->io_mutex))
			continue;

		FUNC4(&wbuf->io_mutex, wbuf->jhead);
		if (!wbuf->need_sync) {
			FUNC5(&wbuf->io_mutex);
			continue;
		}

		err = FUNC9(wbuf);
		FUNC5(&wbuf->io_mutex);
		if (err) {
			FUNC7(c, "cannot sync write-buffer, error %d", err);
			FUNC8(c, err);
			goto out_timers;
		}
	}

	return 0;

out_timers:
	/* Cancel all timers to prevent repeated errors */
	for (i = 0; i < c->jhead_cnt; i++) {
		struct ubifs_wbuf *wbuf = &c->jheads[i].wbuf;

		FUNC4(&wbuf->io_mutex, wbuf->jhead);
		FUNC0(wbuf);
		FUNC5(&wbuf->io_mutex);
	}
	return err;
}