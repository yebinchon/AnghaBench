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
struct inode {int dummy; } ;
struct fat_slot_info {int /*<<< orphan*/  bh; } ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct inode*,unsigned char*,struct fat_slot_info*) ; 

__attribute__((used)) static int FUNC2(struct inode *dir, unsigned char *name)
{
	struct fat_slot_info sinfo;
	int err = FUNC1(dir, name, &sinfo);
	if (err)
		return -ENOENT;
	FUNC0(sinfo.bh);
	return 0;
}