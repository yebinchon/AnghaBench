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
struct the_nilfs {unsigned int ns_mount_state; int /*<<< orphan*/  ns_sem; } ;

/* Variables and functions */
 unsigned int NILFS_VALID_FS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline int FUNC2(struct the_nilfs *nilfs)
{
	unsigned int valid_fs;

	FUNC0(&nilfs->ns_sem);
	valid_fs = (nilfs->ns_mount_state & NILFS_VALID_FS);
	FUNC1(&nilfs->ns_sem);
	return valid_fs;
}