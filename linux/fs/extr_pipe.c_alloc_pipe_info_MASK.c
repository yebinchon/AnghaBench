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
struct user_struct {int dummy; } ;
struct pipe_inode_info {int r_counter; int w_counter; unsigned long buffers; int /*<<< orphan*/  mutex; struct user_struct* user; int /*<<< orphan*/  wait; scalar_t__ bufs; } ;
struct pipe_buffer {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_SYS_RESOURCE ; 
 int /*<<< orphan*/  GFP_KERNEL_ACCOUNT ; 
 unsigned int PAGE_SHIFT ; 
 unsigned long PAGE_SIZE ; 
 unsigned long PIPE_DEF_BUFFERS ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC1 (struct user_struct*,unsigned long,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct user_struct*) ; 
 struct user_struct* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 () ; 
 scalar_t__ FUNC7 (unsigned long,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct pipe_inode_info*) ; 
 struct pipe_inode_info* FUNC9 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pipe_max_size ; 
 scalar_t__ FUNC11 (unsigned long) ; 
 scalar_t__ FUNC12 (unsigned long) ; 

struct pipe_inode_info *FUNC13(void)
{
	struct pipe_inode_info *pipe;
	unsigned long pipe_bufs = PIPE_DEF_BUFFERS;
	struct user_struct *user = FUNC4();
	unsigned long user_bufs;
	unsigned int max_size = FUNC0(pipe_max_size);

	pipe = FUNC9(sizeof(struct pipe_inode_info), GFP_KERNEL_ACCOUNT);
	if (pipe == NULL)
		goto out_free_uid;

	if (pipe_bufs * PAGE_SIZE > max_size && !FUNC2(CAP_SYS_RESOURCE))
		pipe_bufs = max_size >> PAGE_SHIFT;

	user_bufs = FUNC1(user, 0, pipe_bufs);

	if (FUNC12(user_bufs) && FUNC6()) {
		user_bufs = FUNC1(user, pipe_bufs, 1);
		pipe_bufs = 1;
	}

	if (FUNC11(user_bufs) && FUNC6())
		goto out_revert_acct;

	pipe->bufs = FUNC7(pipe_bufs, sizeof(struct pipe_buffer),
			     GFP_KERNEL_ACCOUNT);

	if (pipe->bufs) {
		FUNC5(&pipe->wait);
		pipe->r_counter = pipe->w_counter = 1;
		pipe->buffers = pipe_bufs;
		pipe->user = user;
		FUNC10(&pipe->mutex);
		return pipe;
	}

out_revert_acct:
	(void) FUNC1(user, pipe_bufs, 0);
	FUNC8(pipe);
out_free_uid:
	FUNC3(user);
	return NULL;
}