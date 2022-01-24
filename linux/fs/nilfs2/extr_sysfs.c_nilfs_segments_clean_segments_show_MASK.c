#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct the_nilfs {int /*<<< orphan*/  ns_dat; int /*<<< orphan*/  ns_sufile; } ;
struct nilfs_segments_attr {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_2__ {int /*<<< orphan*/  mi_sem; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 unsigned long FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t
FUNC5(struct nilfs_segments_attr *attr,
				    struct the_nilfs *nilfs,
				    char *buf)
{
	unsigned long ncleansegs;

	FUNC1(&FUNC0(nilfs->ns_dat)->mi_sem);
	ncleansegs = FUNC2(nilfs->ns_sufile);
	FUNC4(&FUNC0(nilfs->ns_dat)->mi_sem);

	return FUNC3(buf, PAGE_SIZE, "%lu\n", ncleansegs);
}