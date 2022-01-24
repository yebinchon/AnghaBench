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
typedef  int /*<<< orphan*/  handle_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*,int*) ; 

int FUNC3(handle_t *handle, struct inode *inode)
{
	int ret, no_expand;

	FUNC1(inode, &no_expand);
	ret = FUNC0(handle, inode);
	FUNC2(inode, &no_expand);

	return ret;
}