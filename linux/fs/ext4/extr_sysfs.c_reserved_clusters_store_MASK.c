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
struct ext4_sb_info {unsigned long long s_cluster_bits; int /*<<< orphan*/  s_resv_clusters; int /*<<< orphan*/  s_es; } ;
typedef  size_t ssize_t ;
typedef  unsigned long long ext4_fsblk_t ;

/* Variables and functions */
 size_t EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long long) ; 
 unsigned long long FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long long*) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 

__attribute__((used)) static ssize_t FUNC4(struct ext4_sb_info *sbi,
				   const char *buf, size_t count)
{
	unsigned long long val;
	ext4_fsblk_t clusters = (FUNC1(sbi->s_es) >>
				 sbi->s_cluster_bits);
	int ret;

	ret = FUNC2(FUNC3(buf), 0, &val);
	if (ret || val >= clusters)
		return -EINVAL;

	FUNC0(&sbi->s_resv_clusters, val);
	return count;
}