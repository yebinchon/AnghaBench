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
struct the_nilfs {unsigned int ns_sb_update_freq; int /*<<< orphan*/  ns_sem; int /*<<< orphan*/  ns_sb; } ;
struct nilfs_superblock_attr {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  KERN_WARNING ; 
 unsigned int NILFS_SB_FREQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t
FUNC5(struct nilfs_superblock_attr *attr,
					    struct the_nilfs *nilfs,
					    const char *buf, size_t count)
{
	unsigned int val;
	int err;

	err = FUNC1(FUNC3(buf), 0, &val);
	if (err) {
		FUNC2(nilfs->ns_sb, KERN_ERR,
			  "unable to convert string: err=%d", err);
		return err;
	}

	if (val < NILFS_SB_FREQ) {
		val = NILFS_SB_FREQ;
		FUNC2(nilfs->ns_sb, KERN_WARNING,
			  "superblock update frequency cannot be lesser than 10 seconds");
	}

	FUNC0(&nilfs->ns_sem);
	nilfs->ns_sb_update_freq = val;
	FUNC4(&nilfs->ns_sem);

	return count;
}