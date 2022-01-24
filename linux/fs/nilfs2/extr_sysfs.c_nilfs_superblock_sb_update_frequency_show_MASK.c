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
struct the_nilfs {unsigned int ns_sb_update_freq; int /*<<< orphan*/  ns_sem; } ;
struct nilfs_superblock_attr {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t
FUNC3(struct nilfs_superblock_attr *attr,
					    struct the_nilfs *nilfs,
					    char *buf)
{
	unsigned int sb_update_freq;

	FUNC0(&nilfs->ns_sem);
	sb_update_freq = nilfs->ns_sb_update_freq;
	FUNC2(&nilfs->ns_sem);

	return FUNC1(buf, PAGE_SIZE, "%u\n", sb_update_freq);
}