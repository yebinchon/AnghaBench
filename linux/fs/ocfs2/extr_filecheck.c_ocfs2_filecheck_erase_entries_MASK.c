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
struct ocfs2_filecheck_sysfs_entry {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct ocfs2_filecheck_sysfs_entry*) ; 

__attribute__((used)) static int
FUNC1(struct ocfs2_filecheck_sysfs_entry *ent,
			      unsigned int count)
{
	unsigned int i = 0;
	unsigned int ret = 0;

	while (i++ < count) {
		if (FUNC0(ent))
			ret++;
		else
			break;
	}

	return (ret == count ? 1 : 0);
}