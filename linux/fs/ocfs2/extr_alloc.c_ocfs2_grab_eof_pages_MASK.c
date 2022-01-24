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
struct super_block {int dummy; } ;
struct page {int dummy; } ;
struct inode {struct super_block* i_sb; } ;
typedef  int loff_t ;
struct TYPE_2__ {int s_clustersize_bits; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__* FUNC1 (struct super_block*) ; 
 int FUNC2 (struct inode*,int,int,struct page**,int*) ; 

__attribute__((used)) static int FUNC3(struct inode *inode, loff_t start, loff_t end,
				struct page **pages, int *num)
{
	struct super_block *sb = inode->i_sb;

	FUNC0(start >> FUNC1(sb)->s_clustersize_bits !=
	       (end - 1) >> FUNC1(sb)->s_clustersize_bits);

	return FUNC2(inode, start, end, pages, num);
}