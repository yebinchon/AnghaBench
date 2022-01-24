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
struct TYPE_4__ {TYPE_1__* ctl_table; struct ctl_dir* parent; } ;
struct ctl_dir {TYPE_2__ header; } ;
struct TYPE_3__ {int /*<<< orphan*/  procname; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct ctl_dir *dir)
{
	if (dir->header.parent)
		FUNC1(dir->header.parent);
	FUNC0("%s/", dir->header.ctl_table[0].procname);
}