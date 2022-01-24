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
struct inode {int /*<<< orphan*/  i_mapping; } ;
typedef  int /*<<< orphan*/  loff_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 

__attribute__((used)) static int FUNC2(struct inode *inode, loff_t start, loff_t end)
{
	int err = FUNC0(inode->i_mapping, start, end);

	if (!err)
		FUNC1(inode);

	return err;
}