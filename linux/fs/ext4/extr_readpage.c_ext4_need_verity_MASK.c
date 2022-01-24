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
struct inode {int /*<<< orphan*/  i_size; } ;
typedef  scalar_t__ pgoff_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 scalar_t__ FUNC1 (struct inode const*) ; 

__attribute__((used)) static inline bool FUNC2(const struct inode *inode, pgoff_t idx)
{
	return FUNC1(inode) &&
	       idx < FUNC0(inode->i_size, PAGE_SIZE);
}