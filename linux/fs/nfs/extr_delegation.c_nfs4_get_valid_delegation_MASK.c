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
struct nfs_delegation {int dummy; } ;
struct inode {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  delegation; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct inode const*) ; 
 scalar_t__ FUNC1 (struct nfs_delegation*,int /*<<< orphan*/ ) ; 
 struct nfs_delegation* FUNC2 (int /*<<< orphan*/ ) ; 

struct nfs_delegation *FUNC3(const struct inode *inode)
{
	struct nfs_delegation *delegation;

	delegation = FUNC2(FUNC0(inode)->delegation);
	if (FUNC1(delegation, 0))
		return delegation;
	return NULL;
}