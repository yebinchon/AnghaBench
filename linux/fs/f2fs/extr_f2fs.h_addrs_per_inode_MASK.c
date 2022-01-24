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

/* Variables and functions */
 unsigned int FUNC0 (unsigned int,int) ; 
 unsigned int FUNC1 (struct inode*) ; 
 unsigned int FUNC2 (struct inode*) ; 

__attribute__((used)) static inline unsigned int FUNC3(struct inode *inode)
{
	unsigned int addrs = FUNC1(inode) -
				FUNC2(inode);
	return FUNC0(addrs, 1);
}