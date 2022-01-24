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
typedef  int u64 ;
typedef  scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__ tv_sec; } ;
struct inode {TYPE_1__ i_ctime; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct inode*,int) ; 

__attribute__((used)) static void FUNC1(struct inode *ea_inode, u64 ref_count)
{
	ea_inode->i_ctime.tv_sec = (u32)(ref_count >> 32);
	FUNC0(ea_inode, ref_count & 0xffffffff);
}