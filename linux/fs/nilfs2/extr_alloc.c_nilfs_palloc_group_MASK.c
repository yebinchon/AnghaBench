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
struct inode {int dummy; } ;
typedef  unsigned long __u64 ;

/* Variables and functions */
 unsigned long FUNC0 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct inode const*) ; 

__attribute__((used)) static unsigned long FUNC2(const struct inode *inode, __u64 nr,
					unsigned long *offset)
{
	__u64 group = nr;

	*offset = FUNC0(group, FUNC1(inode));
	return group;
}