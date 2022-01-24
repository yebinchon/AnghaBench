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
struct wimax_dev {struct dentry* debugfs_dentry; struct net_device* net_dev; } ;
struct net_device {char* name; } ;
struct dentry {int dummy; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,struct dentry*) ; 
 int /*<<< orphan*/  debugfs ; 
 struct dentry* FUNC1 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  id_table ; 
 int /*<<< orphan*/  op_msg ; 
 int /*<<< orphan*/  op_reset ; 
 int /*<<< orphan*/  op_rfkill ; 
 int /*<<< orphan*/  op_state_get ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,char*) ; 
 int /*<<< orphan*/  stack ; 

void FUNC3(struct wimax_dev *wimax_dev)
{
	struct net_device *net_dev = wimax_dev->net_dev;
	struct dentry *dentry;
	char buf[128];

	FUNC2(buf, sizeof(buf), "wimax:%s", net_dev->name);
	dentry = FUNC1(buf, NULL);
	wimax_dev->debugfs_dentry = dentry;

	FUNC0("wimax_dl_", debugfs, dentry);
	FUNC0("wimax_dl_", id_table, dentry);
	FUNC0("wimax_dl_", op_msg, dentry);
	FUNC0("wimax_dl_", op_reset, dentry);
	FUNC0("wimax_dl_", op_rfkill, dentry);
	FUNC0("wimax_dl_", op_state_get, dentry);
	FUNC0("wimax_dl_", stack, dentry);
}