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
struct the_nilfs {int /*<<< orphan*/  ns_sb; int /*<<< orphan*/  ns_segctor_sem; int /*<<< orphan*/  ns_cpfile; } ;
struct nilfs_cpstat {int /*<<< orphan*/  cs_ncps; } ;
struct nilfs_checkpoints_attr {int dummy; } ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  __u64 ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct nilfs_cpstat*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int FUNC3 (char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t
FUNC5(struct nilfs_checkpoints_attr *attr,
					    struct the_nilfs *nilfs,
					    char *buf)
{
	__u64 ncheckpoints;
	struct nilfs_cpstat cpstat;
	int err;

	FUNC0(&nilfs->ns_segctor_sem);
	err = FUNC1(nilfs->ns_cpfile, &cpstat);
	FUNC4(&nilfs->ns_segctor_sem);
	if (err < 0) {
		FUNC2(nilfs->ns_sb, KERN_ERR,
			  "unable to get checkpoint stat: err=%d", err);
		return err;
	}

	ncheckpoints = cpstat.cs_ncps;

	return FUNC3(buf, PAGE_SIZE, "%llu\n", ncheckpoints);
}