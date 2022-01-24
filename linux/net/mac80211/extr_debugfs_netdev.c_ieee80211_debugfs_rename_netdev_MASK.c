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
struct TYPE_2__ {struct dentry* debugfs_dir; } ;
struct ieee80211_sub_if_data {char* name; TYPE_1__ vif; } ;
struct dentry {int /*<<< orphan*/  d_parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  IFNAMSIZ ; 
 scalar_t__ FUNC0 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct dentry*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,char*) ; 

void FUNC3(struct ieee80211_sub_if_data *sdata)
{
	struct dentry *dir;
	char buf[10 + IFNAMSIZ];

	dir = sdata->vif.debugfs_dir;

	if (FUNC0(dir))
		return;

	FUNC2(buf, "netdev:%s", sdata->name);
	FUNC1(dir->d_parent, dir, dir->d_parent, buf);
}