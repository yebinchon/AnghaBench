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
struct nfs4_state {int /*<<< orphan*/  inode; } ;
struct nfs4_exception {int interruptible; scalar_t__ retry; int /*<<< orphan*/  inode; struct nfs4_state* state; } ;
struct file_lock {int dummy; } ;

/* Variables and functions */
 int EAGAIN ; 
 int NFS4ERR_DENIED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct nfs4_state*,int,struct file_lock*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int,struct nfs4_exception*) ; 

__attribute__((used)) static int FUNC3(struct nfs4_state *state, int cmd, struct file_lock *request)
{
	struct nfs4_exception exception = {
		.state = state,
		.inode = state->inode,
		.interruptible = true,
	};
	int err;

	do {
		err = FUNC1(state, cmd, request);
		if (err == -NFS4ERR_DENIED)
			err = -EAGAIN;
		err = FUNC2(FUNC0(state->inode),
				err, &exception);
	} while (exception.retry);
	return err;
}