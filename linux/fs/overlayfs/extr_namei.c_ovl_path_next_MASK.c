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
struct path {int /*<<< orphan*/  mnt; int /*<<< orphan*/  dentry; } ;
struct ovl_entry {int numlower; TYPE_2__* lowerstack; } ;
struct dentry {struct ovl_entry* d_fsdata; } ;
struct TYPE_4__ {TYPE_1__* layer; int /*<<< orphan*/  dentry; } ;
struct TYPE_3__ {int /*<<< orphan*/  mnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct dentry*,struct path*) ; 

int FUNC2(int idx, struct dentry *dentry, struct path *path)
{
	struct ovl_entry *oe = dentry->d_fsdata;

	FUNC0(idx < 0);
	if (idx == 0) {
		FUNC1(dentry, path);
		if (path->dentry)
			return oe->numlower ? 1 : -1;
		idx++;
	}
	FUNC0(idx > oe->numlower);
	path->dentry = oe->lowerstack[idx - 1].dentry;
	path->mnt = oe->lowerstack[idx - 1].layer->mnt;

	return (idx < oe->numlower) ? idx + 1 : -1;
}