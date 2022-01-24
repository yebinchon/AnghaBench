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
struct TYPE_4__ {scalar_t__ taken_empty_lebs; } ;
struct TYPE_3__ {int /*<<< orphan*/ * buf; } ;
struct ubifs_info {int bulk_read; TYPE_2__ lst; int /*<<< orphan*/  need_recovery; int /*<<< orphan*/  bu_mutex; TYPE_1__ bu; scalar_t__ ro_error; scalar_t__ ro_mount; scalar_t__ ro_media; } ;
struct super_block {int /*<<< orphan*/  s_flags; struct ubifs_info* s_fs_info; } ;

/* Variables and functions */
 int EROFS ; 
 int SB_RDONLY ; 
 int /*<<< orphan*/  FUNC0 (struct ubifs_info*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC6 (struct ubifs_info*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct ubifs_info*,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct ubifs_info*,char*) ; 
 int FUNC9 (struct ubifs_info*,char*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct ubifs_info*) ; 
 int FUNC11 (struct ubifs_info*) ; 

__attribute__((used)) static int FUNC12(struct super_block *sb, int *flags, char *data)
{
	int err;
	struct ubifs_info *c = sb->s_fs_info;

	FUNC5(sb);
	FUNC1("old flags %#lx, new flags %#x", sb->s_flags, *flags);

	err = FUNC9(c, data, 1);
	if (err) {
		FUNC7(c, "invalid or unknown remount parameter");
		return err;
	}

	if (c->ro_mount && !(*flags & SB_RDONLY)) {
		if (c->ro_error) {
			FUNC8(c, "cannot re-mount R/W due to prior errors");
			return -EROFS;
		}
		if (c->ro_media) {
			FUNC8(c, "cannot re-mount R/W - UBI volume is R/O");
			return -EROFS;
		}
		err = FUNC11(c);
		if (err)
			return err;
	} else if (!c->ro_mount && (*flags & SB_RDONLY)) {
		if (c->ro_error) {
			FUNC8(c, "cannot re-mount R/O due to prior errors");
			return -EROFS;
		}
		FUNC10(c);
	}

	if (c->bulk_read == 1)
		FUNC0(c);
	else {
		FUNC1("disable bulk-read");
		FUNC3(&c->bu_mutex);
		FUNC2(c->bu.buf);
		c->bu.buf = NULL;
		FUNC4(&c->bu_mutex);
	}

	if (!c->need_recovery)
		FUNC6(c, c->lst.taken_empty_lebs > 0);

	return 0;
}