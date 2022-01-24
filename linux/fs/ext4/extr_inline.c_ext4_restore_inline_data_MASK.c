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
struct ext4_iloc {int dummy; } ;
typedef  int /*<<< orphan*/  handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  EXT4_STATE_MAY_INLINE_DATA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct inode*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*,struct ext4_iloc*,void*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(handle_t *handle, struct inode *inode,
				     struct ext4_iloc *iloc,
				     void *buf, int inline_size)
{
	FUNC0(handle, inode, inline_size);
	FUNC2(inode, iloc, buf, 0, inline_size);
	FUNC1(inode, EXT4_STATE_MAY_INLINE_DATA);
}