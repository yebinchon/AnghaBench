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
typedef  int /*<<< orphan*/  time64_t ;
struct the_nilfs {int /*<<< orphan*/  ns_segctor_sem; int /*<<< orphan*/  ns_nongc_ctime; } ;
struct nilfs_segctor_attr {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t
FUNC3(struct nilfs_segctor_attr *attr,
					 struct the_nilfs *nilfs,
					 char *buf)
{
	time64_t nongc_ctime;

	FUNC1(&nilfs->ns_segctor_sem);
	nongc_ctime = nilfs->ns_nongc_ctime;
	FUNC2(&nilfs->ns_segctor_sem);

	return FUNC0(nongc_ctime, buf);
}