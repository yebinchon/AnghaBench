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
struct mem_cgroup {int dummy; } ;
struct kernfs_open_file {int dummy; } ;
typedef  size_t ssize_t ;
typedef  int /*<<< orphan*/  loff_t ;

/* Variables and functions */
 size_t EINVAL ; 
 scalar_t__ FUNC0 (struct mem_cgroup*) ; 
 struct mem_cgroup* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct mem_cgroup*) ; 
 int /*<<< orphan*/  FUNC3 (struct kernfs_open_file*) ; 

__attribute__((used)) static ssize_t FUNC4(struct kernfs_open_file *of,
					    char *buf, size_t nbytes,
					    loff_t off)
{
	struct mem_cgroup *memcg = FUNC1(FUNC3(of));

	if (FUNC2(memcg))
		return -EINVAL;
	return FUNC0(memcg) ?: nbytes;
}