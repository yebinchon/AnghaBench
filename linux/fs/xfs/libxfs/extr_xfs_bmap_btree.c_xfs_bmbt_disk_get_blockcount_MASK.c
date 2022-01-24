#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xfs_filblks_t ;
struct TYPE_3__ {int /*<<< orphan*/  l1; } ;
typedef  TYPE_1__ xfs_bmbt_rec_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int) ; 

xfs_filblks_t
FUNC2(
	xfs_bmbt_rec_t	*r)
{
	return (xfs_filblks_t)(FUNC0(r->l1) & FUNC1(21));
}