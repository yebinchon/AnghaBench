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
struct TYPE_3__ {struct ovl_fs* redirect_mode; struct ovl_fs* workdir; struct ovl_fs* upperdir; struct ovl_fs* lowerdir; } ;
struct ovl_fs {unsigned int numlower; unsigned int numlowerfs; scalar_t__ creator_cred; TYPE_1__ config; struct ovl_fs* lower_fs; struct ovl_fs* lower_layers; int /*<<< orphan*/  pseudo_dev; TYPE_2__* mnt; int /*<<< orphan*/  trap; TYPE_2__* upper_mnt; scalar_t__ upperdir_locked; int /*<<< orphan*/  workbasedir; scalar_t__ workdir_locked; int /*<<< orphan*/  workdir; int /*<<< orphan*/  indexdir; int /*<<< orphan*/  upperdir_trap; int /*<<< orphan*/  workdir_trap; int /*<<< orphan*/  indexdir_trap; int /*<<< orphan*/  workbasedir_trap; } ;
struct TYPE_4__ {int /*<<< orphan*/  mnt_root; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ovl_fs*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 

__attribute__((used)) static void FUNC7(struct ovl_fs *ofs)
{
	unsigned i;

	FUNC2(ofs->workbasedir_trap);
	FUNC2(ofs->indexdir_trap);
	FUNC2(ofs->workdir_trap);
	FUNC2(ofs->upperdir_trap);
	FUNC0(ofs->indexdir);
	FUNC0(ofs->workdir);
	if (ofs->workdir_locked)
		FUNC5(ofs->workbasedir);
	FUNC0(ofs->workbasedir);
	if (ofs->upperdir_locked)
		FUNC5(ofs->upper_mnt->mnt_root);
	FUNC4(ofs->upper_mnt);
	for (i = 0; i < ofs->numlower; i++) {
		FUNC2(ofs->lower_layers[i].trap);
		FUNC4(ofs->lower_layers[i].mnt);
	}
	for (i = 0; i < ofs->numlowerfs; i++)
		FUNC1(ofs->lower_fs[i].pseudo_dev);
	FUNC3(ofs->lower_layers);
	FUNC3(ofs->lower_fs);

	FUNC3(ofs->config.lowerdir);
	FUNC3(ofs->config.upperdir);
	FUNC3(ofs->config.workdir);
	FUNC3(ofs->config.redirect_mode);
	if (ofs->creator_cred)
		FUNC6(ofs->creator_cred);
	FUNC3(ofs);
}