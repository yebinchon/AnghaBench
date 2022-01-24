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
struct ubifs_sb_node {int /*<<< orphan*/  flags; } ;
struct ubifs_info {int encrypted; int fmt_version; scalar_t__ ro_media; scalar_t__ ro_mount; struct ubifs_sb_node* sup_node; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_FS_ENCRYPTION ; 
 int EINVAL ; 
 int EOPNOTSUPP ; 
 int EROFS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UBIFS_FLG_ENCRYPTION ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ubifs_info*,char*) ; 
 int FUNC3 (struct ubifs_info*,struct ubifs_sb_node*) ; 

int FUNC4(struct ubifs_info *c)
{
	int err;
	struct ubifs_sb_node *sup = c->sup_node;

	if (!FUNC0(CONFIG_FS_ENCRYPTION))
		return -EOPNOTSUPP;

	if (c->encrypted)
		return 0;

	if (c->ro_mount || c->ro_media)
		return -EROFS;

	if (c->fmt_version < 5) {
		FUNC2(c, "on-flash format version 5 is needed for encryption");
		return -EINVAL;
	}

	sup->flags |= FUNC1(UBIFS_FLG_ENCRYPTION);

	err = FUNC3(c, sup);
	if (!err)
		c->encrypted = 1;

	return err;
}