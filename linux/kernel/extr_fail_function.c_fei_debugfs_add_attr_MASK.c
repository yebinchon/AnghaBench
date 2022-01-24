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
struct TYPE_2__ {int /*<<< orphan*/  symbol_name; } ;
struct fei_attr {TYPE_1__ kp; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 struct dentry* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,struct dentry*,struct fei_attr*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  fei_debugfs_dir ; 
 int /*<<< orphan*/  fei_retval_ops ; 

__attribute__((used)) static void FUNC2(struct fei_attr *attr)
{
	struct dentry *dir;

	dir = FUNC0(attr->kp.symbol_name, fei_debugfs_dir);

	FUNC1("retval", 0600, dir, attr, &fei_retval_ops);
}