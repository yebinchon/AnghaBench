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
struct ctl_table_set {struct ctl_dir dir; } ;
struct TYPE_3__ {char* procname; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct ctl_dir*) ; 
 struct ctl_dir* FUNC1 (struct ctl_dir*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 

__attribute__((used)) static struct ctl_dir *FUNC3(struct ctl_table_set *set, struct ctl_dir *dir)
{
	struct ctl_dir *parent;
	const char *procname;
	if (!dir->header.parent)
		return &set->dir;
	parent = FUNC3(set, dir->header.parent);
	if (FUNC0(parent))
		return parent;
	procname = dir->header.ctl_table[0].procname;
	return FUNC1(parent, procname, FUNC2(procname));
}