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
struct dentry {int /*<<< orphan*/  d_parent; } ;
struct batadv_hard_iface {struct dentry* debug_dir; TYPE_1__* net_dev; } ;
struct TYPE_2__ {char* name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct dentry*,int /*<<< orphan*/ ,char const*) ; 

void FUNC1(struct batadv_hard_iface *hard_iface)
{
	const char *name = hard_iface->net_dev->name;
	struct dentry *dir;

	dir = hard_iface->debug_dir;
	if (!dir)
		return;

	FUNC0(dir->d_parent, dir, dir->d_parent, name);
}