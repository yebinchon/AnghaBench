#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct seq_file {int dummy; } ;
struct dentry {int /*<<< orphan*/  d_sb; } ;
struct TYPE_9__ {scalar_t__ fmask; scalar_t__ dmask; int on_errors; scalar_t__ mft_zone_multiplier; TYPE_1__* nls_map; int /*<<< orphan*/  gid; int /*<<< orphan*/  uid; } ;
typedef  TYPE_2__ ntfs_volume ;
struct TYPE_10__ {int val; scalar_t__ str; } ;
struct TYPE_8__ {scalar_t__ charset; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_2__*) ; 
 scalar_t__ FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  init_user_ns ; 
 TYPE_3__* on_errors_arr ; 
 int /*<<< orphan*/  FUNC6 (struct seq_file*,char*,...) ; 

int FUNC7(struct seq_file *sf, struct dentry *root)
{
	ntfs_volume *vol = FUNC0(root->d_sb);
	int i;

	FUNC6(sf, ",uid=%i", FUNC5(&init_user_ns, vol->uid));
	FUNC6(sf, ",gid=%i", FUNC4(&init_user_ns, vol->gid));
	if (vol->fmask == vol->dmask)
		FUNC6(sf, ",umask=0%o", vol->fmask);
	else {
		FUNC6(sf, ",fmask=0%o", vol->fmask);
		FUNC6(sf, ",dmask=0%o", vol->dmask);
	}
	FUNC6(sf, ",nls=%s", vol->nls_map->charset);
	if (FUNC1(vol))
		FUNC6(sf, ",case_sensitive");
	if (FUNC2(vol))
		FUNC6(sf, ",show_sys_files");
	if (!FUNC3(vol))
		FUNC6(sf, ",disable_sparse");
	for (i = 0; on_errors_arr[i].val; i++) {
		if (on_errors_arr[i].val & vol->on_errors)
			FUNC6(sf, ",errors=%s", on_errors_arr[i].str);
	}
	FUNC6(sf, ",mft_zone_multiplier=%i", vol->mft_zone_multiplier);
	return 0;
}