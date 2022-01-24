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
struct pipe_inode_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  I_MUTEX_CHILD ; 
 int /*<<< orphan*/  I_MUTEX_PARENT ; 
 int /*<<< orphan*/  FUNC1 (struct pipe_inode_info*,int /*<<< orphan*/ ) ; 

void FUNC2(struct pipe_inode_info *pipe1,
		      struct pipe_inode_info *pipe2)
{
	FUNC0(pipe1 == pipe2);

	if (pipe1 < pipe2) {
		FUNC1(pipe1, I_MUTEX_PARENT);
		FUNC1(pipe2, I_MUTEX_CHILD);
	} else {
		FUNC1(pipe2, I_MUTEX_PARENT);
		FUNC1(pipe1, I_MUTEX_CHILD);
	}
}