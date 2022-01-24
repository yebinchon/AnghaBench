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
struct the_nilfs {int /*<<< orphan*/  ns_last_segment_lock; int /*<<< orphan*/  ns_last_cno; } ;
struct nilfs_segctor_attr {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;
typedef  int /*<<< orphan*/  __u64 ;

/* Variables and functions */
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t
FUNC3(struct nilfs_segctor_attr *attr,
					struct the_nilfs *nilfs,
					char *buf)
{
	__u64 last_cno;

	FUNC1(&nilfs->ns_last_segment_lock);
	last_cno = nilfs->ns_last_cno;
	FUNC2(&nilfs->ns_last_segment_lock);

	return FUNC0(buf, PAGE_SIZE, "%llu\n", last_cno);
}