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
 unsigned long long PAGE_SHIFT ; 
 int PAGE_SIZE ; 
 int FUNC0 (struct inode*) ; 

__attribute__((used)) static unsigned long FUNC1(struct inode *inode)
{
	return ((unsigned long long) (FUNC0(inode) + PAGE_SIZE - 1))
							>> PAGE_SHIFT;
}