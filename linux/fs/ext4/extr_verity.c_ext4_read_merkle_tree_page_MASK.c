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
struct page {int dummy; } ;
struct inode {int /*<<< orphan*/  i_mapping; } ;
typedef  int pgoff_t ;

/* Variables and functions */
 int PAGE_SHIFT ; 
 int FUNC0 (struct inode*) ; 
 struct page* FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct page *FUNC2(struct inode *inode,
					       pgoff_t index)
{
	index += FUNC0(inode) >> PAGE_SHIFT;

	return FUNC1(inode->i_mapping, index, NULL);
}