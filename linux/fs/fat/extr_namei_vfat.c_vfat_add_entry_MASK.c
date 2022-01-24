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
struct timespec64 {int dummy; } ;
struct qstr {int /*<<< orphan*/  name; } ;
struct msdos_dir_slot {int dummy; } ;
struct inode {int dummy; } ;
struct fat_slot_info {int dummy; } ;

/* Variables and functions */
 int ENOENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 scalar_t__ FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  MSDOS_SLOTS ; 
 int S_CTIME ; 
 int S_MTIME ; 
 int FUNC1 (struct inode*,struct msdos_dir_slot*,int,struct fat_slot_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*,struct timespec64*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct msdos_dir_slot*) ; 
 struct msdos_dir_slot* FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 int FUNC7 (struct inode*,int /*<<< orphan*/ ,unsigned int,int,int,struct timespec64*,struct msdos_dir_slot*,int*) ; 
 unsigned int FUNC8 (struct qstr const*) ; 

__attribute__((used)) static int FUNC9(struct inode *dir, const struct qstr *qname,
			  int is_dir, int cluster, struct timespec64 *ts,
			  struct fat_slot_info *sinfo)
{
	struct msdos_dir_slot *slots;
	unsigned int len;
	int err, nr_slots;

	len = FUNC8(qname);
	if (len == 0)
		return -ENOENT;

	slots = FUNC5(MSDOS_SLOTS, sizeof(*slots), GFP_NOFS);
	if (slots == NULL)
		return -ENOMEM;

	err = FUNC7(dir, qname->name, len, is_dir, cluster, ts,
			       slots, &nr_slots);
	if (err)
		goto cleanup;

	err = FUNC1(dir, slots, nr_slots, sinfo);
	if (err)
		goto cleanup;

	/* update timestamp */
	FUNC3(dir, ts, S_CTIME|S_MTIME);
	if (FUNC0(dir))
		(void)FUNC2(dir);
	else
		FUNC6(dir);
cleanup:
	FUNC4(slots);
	return err;
}