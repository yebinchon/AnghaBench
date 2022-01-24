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
typedef  int xfs_fsblock_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int STARTBLOCKMASK ; 
 int STARTBLOCKVALBITS ; 

__attribute__((used)) static inline xfs_fsblock_t FUNC1(int k)
{
	FUNC0(k < (1 << STARTBLOCKVALBITS));
	return STARTBLOCKMASK | (k);
}