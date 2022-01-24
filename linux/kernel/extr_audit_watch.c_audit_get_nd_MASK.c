#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct path {struct dentry* dentry; } ;
struct dentry {TYPE_1__* d_sb; } ;
struct audit_watch {int /*<<< orphan*/  ino; int /*<<< orphan*/  dev; int /*<<< orphan*/  path; } ;
struct TYPE_5__ {int /*<<< orphan*/  i_ino; } ;
struct TYPE_4__ {int /*<<< orphan*/  s_dev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct dentry*) ; 
 int FUNC1 (struct dentry*) ; 
 TYPE_2__* FUNC2 (struct dentry*) ; 
 scalar_t__ FUNC3 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC4 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 struct dentry* FUNC6 (int /*<<< orphan*/ ,struct path*) ; 

__attribute__((used)) static int FUNC7(struct audit_watch *watch, struct path *parent)
{
	struct dentry *d = FUNC6(watch->path, parent);
	if (FUNC0(d))
		return FUNC1(d);
	FUNC5(FUNC2(parent->dentry));
	if (FUNC3(d)) {
		/* update watch filter fields */
		watch->dev = d->d_sb->s_dev;
		watch->ino = FUNC2(d)->i_ino;
	}
	FUNC4(d);
	return 0;
}