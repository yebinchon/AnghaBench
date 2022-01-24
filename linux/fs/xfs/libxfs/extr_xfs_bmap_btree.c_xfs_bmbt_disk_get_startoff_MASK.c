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
typedef  int xfs_fileoff_t ;
struct TYPE_3__ {int /*<<< orphan*/  l0; } ;
typedef  TYPE_1__ xfs_bmbt_rec_t ;

/* Variables and functions */
 scalar_t__ BMBT_EXNTFLAG_BITLEN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (scalar_t__) ; 

xfs_fileoff_t
FUNC2(
	xfs_bmbt_rec_t	*r)
{
	return ((xfs_fileoff_t)FUNC0(r->l0) &
		 FUNC1(64 - BMBT_EXNTFLAG_BITLEN)) >> 9;
}