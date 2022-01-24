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
struct the_nilfs {int /*<<< orphan*/  ns_dat; int /*<<< orphan*/  ns_sufile; int /*<<< orphan*/  ns_cpfile; } ;
struct nilfs_root {int /*<<< orphan*/  ifile; } ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct the_nilfs *nilfs,
				     struct nilfs_root *root)
{
	int ret = 0;

	if (FUNC1(root->ifile))
		ret++;
	if (FUNC1(nilfs->ns_cpfile))
		ret++;
	if (FUNC1(nilfs->ns_sufile))
		ret++;
	if ((ret || FUNC0()) && FUNC1(nilfs->ns_dat))
		ret++;
	return ret;
}