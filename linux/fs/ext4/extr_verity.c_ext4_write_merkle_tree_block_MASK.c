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
typedef  int u64 ;
struct inode {int dummy; } ;
typedef  scalar_t__ loff_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct inode*) ; 
 int FUNC1 (struct inode*,void const*,int,scalar_t__) ; 

__attribute__((used)) static int FUNC2(struct inode *inode, const void *buf,
					u64 index, int log_blocksize)
{
	loff_t pos = FUNC0(inode) + (index << log_blocksize);

	return FUNC1(inode, buf, 1 << log_blocksize, pos);
}