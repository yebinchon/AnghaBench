#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  vol_id; int /*<<< orphan*/  ubi_num; } ;
struct TYPE_5__ {int unmount_mode; int bulk_read; int chk_data_crc; int /*<<< orphan*/  compr_type; scalar_t__ override_compr; } ;
struct ubifs_info {TYPE_3__ vi; TYPE_2__ mount_opts; } ;
struct seq_file {int dummy; } ;
struct dentry {TYPE_1__* d_sb; } ;
struct TYPE_4__ {struct ubifs_info* s_fs_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct seq_file*,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct ubifs_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct ubifs_info*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct seq_file *s, struct dentry *root)
{
	struct ubifs_info *c = root->d_sb->s_fs_info;

	if (c->mount_opts.unmount_mode == 2)
		FUNC1(s, ",fast_unmount");
	else if (c->mount_opts.unmount_mode == 1)
		FUNC1(s, ",norm_unmount");

	if (c->mount_opts.bulk_read == 2)
		FUNC1(s, ",bulk_read");
	else if (c->mount_opts.bulk_read == 1)
		FUNC1(s, ",no_bulk_read");

	if (c->mount_opts.chk_data_crc == 2)
		FUNC1(s, ",chk_data_crc");
	else if (c->mount_opts.chk_data_crc == 1)
		FUNC1(s, ",no_chk_data_crc");

	if (c->mount_opts.override_compr) {
		FUNC0(s, ",compr=%s",
			   FUNC3(c, c->mount_opts.compr_type));
	}

	FUNC0(s, ",assert=%s", FUNC2(c));
	FUNC0(s, ",ubi=%d,vol=%d", c->vi.ubi_num, c->vi.vol_id);

	return 0;
}