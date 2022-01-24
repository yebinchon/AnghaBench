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
struct nilfs_sc_info {int dummy; } ;
struct inode {int dummy; } ;
struct buffer_head {int dummy; } ;
typedef  int /*<<< orphan*/  __le64 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*) ; 
 int FUNC2 (struct nilfs_sc_info*,struct buffer_head*,struct inode*,int) ; 

__attribute__((used)) static int FUNC3(struct nilfs_sc_info *sci,
				   struct buffer_head *bh,
				   struct inode *inode)
{
	FUNC0(!FUNC1(bh));
	return FUNC2(sci, bh, inode, sizeof(__le64));
}