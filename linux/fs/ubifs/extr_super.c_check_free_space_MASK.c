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
struct TYPE_2__ {scalar_t__ total_free; scalar_t__ total_dirty; } ;
struct ubifs_info {scalar_t__ dark_wm; int /*<<< orphan*/  bi; TYPE_1__ lst; } ;

/* Variables and functions */
 int ENOSPC ; 
 int /*<<< orphan*/  FUNC0 (struct ubifs_info*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ubifs_info*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ubifs_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct ubifs_info*,char*) ; 

__attribute__((used)) static int FUNC4(struct ubifs_info *c)
{
	FUNC0(c, c->dark_wm > 0);
	if (c->lst.total_free + c->lst.total_dirty < c->dark_wm) {
		FUNC3(c, "insufficient free space to mount in R/W mode");
		FUNC1(c, &c->bi);
		FUNC2(c);
		return -ENOSPC;
	}
	return 0;
}