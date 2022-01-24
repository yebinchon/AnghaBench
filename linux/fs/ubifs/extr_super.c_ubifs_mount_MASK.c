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
struct TYPE_3__ {int /*<<< orphan*/  vol_id; int /*<<< orphan*/  ubi_num; } ;
struct ubifs_info {int ro_mount; TYPE_1__ vi; } ;
struct ubi_volume_desc {scalar_t__ s_root; int /*<<< orphan*/  s_flags; struct ubifs_info* s_fs_info; } ;
struct super_block {scalar_t__ s_root; int /*<<< orphan*/  s_flags; struct ubifs_info* s_fs_info; } ;
struct file_system_type {int dummy; } ;
struct dentry {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  pid; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_UBIFS_ATIME_SUPPORT ; 
 int EBUSY ; 
 int ENOMEM ; 
 struct dentry* FUNC0 (struct ubi_volume_desc*) ; 
 struct dentry* FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct ubi_volume_desc*) ; 
 int FUNC4 (struct ubi_volume_desc*) ; 
 int /*<<< orphan*/  SB_ACTIVE ; 
 int /*<<< orphan*/  SB_NOATIME ; 
 int SB_RDONLY ; 
 int SB_SILENT ; 
 int /*<<< orphan*/  UBI_READONLY ; 
 struct ubifs_info* FUNC5 (struct ubi_volume_desc*) ; 
 TYPE_2__* current ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  FUNC7 (struct ubi_volume_desc*) ; 
 struct dentry* FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (struct ubifs_info*) ; 
 struct ubi_volume_desc* FUNC10 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*,int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  sb_set ; 
 int /*<<< orphan*/  sb_test ; 
 struct ubi_volume_desc* FUNC12 (struct file_system_type*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct ubifs_info*) ; 
 int /*<<< orphan*/  FUNC13 (struct ubi_volume_desc*) ; 
 int FUNC14 (struct ubi_volume_desc*,void*,int) ; 
 int /*<<< orphan*/  FUNC15 (struct ubifs_info*,char*) ; 

__attribute__((used)) static struct dentry *FUNC16(struct file_system_type *fs_type, int flags,
			const char *name, void *data)
{
	struct ubi_volume_desc *ubi;
	struct ubifs_info *c;
	struct super_block *sb;
	int err;

	FUNC6("name %s, flags %#x", name, flags);

	/*
	 * Get UBI device number and volume ID. Mount it read-only so far
	 * because this might be a new mount point, and UBI allows only one
	 * read-write user at a time.
	 */
	ubi = FUNC10(name, UBI_READONLY);
	if (FUNC3(ubi)) {
		if (!(flags & SB_SILENT))
			FUNC11("UBIFS error (pid: %d): cannot open \"%s\", error %d",
			       current->pid, name, (int)FUNC4(ubi));
		return FUNC0(ubi);
	}

	c = FUNC5(ubi);
	if (!c) {
		err = -ENOMEM;
		goto out_close;
	}

	FUNC6("opened ubi%d_%d", c->vi.ubi_num, c->vi.vol_id);

	sb = FUNC12(fs_type, sb_test, sb_set, flags, c);
	if (FUNC3(sb)) {
		err = FUNC4(sb);
		FUNC9(c);
		goto out_close;
	}

	if (sb->s_root) {
		struct ubifs_info *c1 = sb->s_fs_info;
		FUNC9(c);
		/* A new mount point for already mounted UBIFS */
		FUNC6("this ubi volume is already mounted");
		if (!!(flags & SB_RDONLY) != c1->ro_mount) {
			err = -EBUSY;
			goto out_deact;
		}
	} else {
		err = FUNC14(sb, data, flags & SB_SILENT ? 1 : 0);
		if (err) {
			FUNC9(c);
			goto out_deact;
		}
		/* We do not support atime */
		sb->s_flags |= SB_ACTIVE;
		if (FUNC2(CONFIG_UBIFS_ATIME_SUPPORT))
			FUNC15(c, "full atime support is enabled.");
		else
			sb->s_flags |= SB_NOATIME;
	}

	/* 'fill_super()' opens ubi again so we must close it here */
	FUNC13(ubi);

	return FUNC8(sb->s_root);

out_deact:
	FUNC7(sb);
out_close:
	FUNC13(ubi);
	return FUNC1(err);
}