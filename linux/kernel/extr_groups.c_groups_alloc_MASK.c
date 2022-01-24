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
struct group_info {int ngroups; int /*<<< orphan*/  usage; } ;
typedef  int /*<<< orphan*/  kgid_t ;

/* Variables and functions */
 int GFP_KERNEL_ACCOUNT ; 
 int /*<<< orphan*/  PAGE_KERNEL ; 
 int __GFP_NORETRY ; 
 int __GFP_NOWARN ; 
 struct group_info* FUNC0 (unsigned int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 struct group_info* FUNC2 (unsigned int,int) ; 

struct group_info *FUNC3(int gidsetsize)
{
	struct group_info *gi;
	unsigned int len;

	len = sizeof(struct group_info) + sizeof(kgid_t) * gidsetsize;
	gi = FUNC2(len, GFP_KERNEL_ACCOUNT|__GFP_NOWARN|__GFP_NORETRY);
	if (!gi)
		gi = FUNC0(len, GFP_KERNEL_ACCOUNT, PAGE_KERNEL);
	if (!gi)
		return NULL;

	FUNC1(&gi->usage, 1);
	gi->ngroups = gidsetsize;
	return gi;
}