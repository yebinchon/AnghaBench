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
 int FUNC0 (struct inode*) ; 
 int FUNC1 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*,size_t) ; 

__attribute__((used)) static int FUNC4(struct inode *inode, size_t len)
{
	int err;

	err = FUNC0(inode);
	if (err)
		return err;
	err = FUNC1(inode, FUNC3(inode, len));
	if (err)
		FUNC2(inode);
	return err;
}