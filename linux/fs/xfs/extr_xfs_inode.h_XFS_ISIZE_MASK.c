#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xfs_fsize_t ;
struct TYPE_4__ {int /*<<< orphan*/  di_size; } ;
struct xfs_inode {TYPE_1__ i_d; } ;
struct TYPE_5__ {int /*<<< orphan*/  i_mode; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC1 (struct xfs_inode*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 

__attribute__((used)) static inline xfs_fsize_t FUNC3(struct xfs_inode *ip)
{
	if (FUNC0(FUNC1(ip)->i_mode))
		return FUNC2(FUNC1(ip));
	return ip->i_d.di_size;
}