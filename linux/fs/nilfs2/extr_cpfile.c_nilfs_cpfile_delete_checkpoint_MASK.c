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
struct nilfs_cpinfo {scalar_t__ ci_cno; } ;
struct inode {int dummy; } ;
typedef  scalar_t__ ssize_t ;
typedef  int /*<<< orphan*/  ci ;
typedef  scalar_t__ __u64 ;

/* Variables and functions */
 int EBUSY ; 
 int ENOENT ; 
 int FUNC0 (struct inode*,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC1 (struct inode*,scalar_t__*,struct nilfs_cpinfo*,int,int) ; 
 scalar_t__ FUNC2 (struct nilfs_cpinfo*) ; 

int FUNC3(struct inode *cpfile, __u64 cno)
{
	struct nilfs_cpinfo ci;
	__u64 tcno = cno;
	ssize_t nci;

	nci = FUNC1(cpfile, &tcno, &ci, sizeof(ci), 1);
	if (nci < 0)
		return nci;
	else if (nci == 0 || ci.ci_cno != cno)
		return -ENOENT;
	else if (FUNC2(&ci))
		return -EBUSY;

	return FUNC0(cpfile, cno, cno + 1);
}