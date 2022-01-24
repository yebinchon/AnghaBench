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
struct ubifs_jhead {int dummy; } ;
struct ubifs_info {int jhead_cnt; TYPE_2__* jheads; } ;
struct TYPE_3__ {int jhead; int no_timer; int /*<<< orphan*/ * sync_callback; } ;
struct TYPE_4__ {int grouped; int /*<<< orphan*/  log_hash; TYPE_1__ wbuf; int /*<<< orphan*/  buds_list; } ;

/* Variables and functions */
 int ENOMEM ; 
 size_t GCHD ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bud_wbuf_callback ; 
 TYPE_2__* FUNC2 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ubifs_info*) ; 
 int FUNC5 (struct ubifs_info*,TYPE_1__*) ; 

__attribute__((used)) static int FUNC6(struct ubifs_info *c)
{
	int i, err;

	c->jheads = FUNC2(c->jhead_cnt, sizeof(struct ubifs_jhead),
			    GFP_KERNEL);
	if (!c->jheads)
		return -ENOMEM;

	/* Initialize journal heads */
	for (i = 0; i < c->jhead_cnt; i++) {
		FUNC0(&c->jheads[i].buds_list);
		err = FUNC5(c, &c->jheads[i].wbuf);
		if (err)
			return err;

		c->jheads[i].wbuf.sync_callback = &bud_wbuf_callback;
		c->jheads[i].wbuf.jhead = i;
		c->jheads[i].grouped = 1;
		c->jheads[i].log_hash = FUNC4(c);
		if (FUNC1(c->jheads[i].log_hash))
			goto out;
	}

	/*
	 * Garbage Collector head does not need to be synchronized by timer.
	 * Also GC head nodes are not grouped.
	 */
	c->jheads[GCHD].wbuf.no_timer = 1;
	c->jheads[GCHD].grouped = 0;

	return 0;

out:
	while (i--)
		FUNC3(c->jheads[i].log_hash);

	return err;
}