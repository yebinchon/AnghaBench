#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct inode {int dummy; } ;
struct TYPE_6__ {int h_buffer_credits; } ;
typedef  TYPE_1__ handle_t ;

/* Variables and functions */
 int EAGAIN ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int FUNC1 (TYPE_1__*,int) ; 
 int FUNC2 (TYPE_1__*,struct inode*,int) ; 

__attribute__((used)) static int FUNC3(handle_t *handle,
					    struct inode *inode,
					    int needed)
{
	int err;

	if (!FUNC0(handle))
		return 0;
	if (handle->h_buffer_credits >= needed)
		return 0;
	/*
	 * If we need to extend the journal get a few extra blocks
	 * while we're at it for efficiency's sake.
	 */
	needed += 3;
	err = FUNC1(handle, needed - handle->h_buffer_credits);
	if (err <= 0)
		return err;
	err = FUNC2(handle, inode, needed);
	if (err == 0)
		err = -EAGAIN;

	return err;
}