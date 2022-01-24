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
struct nfs_open_context {struct nfs4_state* state; } ;
struct nfs4_state {int /*<<< orphan*/  flags; } ;
struct file_lock {int fl_type; int fl_flags; } ;
struct file {int f_mode; } ;

/* Variables and functions */
 int EBADF ; 
 int EINVAL ; 
 int ENOLCK ; 
 int FL_POSIX ; 
 int FMODE_READ ; 
 int FMODE_WRITE ; 
 int /*<<< orphan*/  F_GETLK ; 
#define  F_RDLCK 129 
 int F_UNLCK ; 
#define  F_WRLCK 128 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  NFS_STATE_POSIX_LOCKS ; 
 int FUNC3 (struct nfs4_state*,int /*<<< orphan*/ ,struct file_lock*) ; 
 int FUNC4 (struct nfs4_state*,int,struct file_lock*) ; 
 int FUNC5 (struct nfs4_state*,int,struct file_lock*) ; 
 int FUNC6 (struct nfs4_state*,struct file_lock*) ; 
 struct nfs_open_context* FUNC7 (struct file*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC9(struct file *filp, int cmd, struct file_lock *request)
{
	struct nfs_open_context *ctx;
	struct nfs4_state *state;
	int status;

	/* verify open state */
	ctx = FUNC7(filp);
	state = ctx->state;

	if (FUNC0(cmd)) {
		if (state != NULL)
			return FUNC3(state, F_GETLK, request);
		return 0;
	}

	if (!(FUNC1(cmd) || FUNC2(cmd)))
		return -EINVAL;

	if (request->fl_type == F_UNLCK) {
		if (state != NULL)
			return FUNC4(state, cmd, request);
		return 0;
	}

	if (state == NULL)
		return -ENOLCK;

	if ((request->fl_flags & FL_POSIX) &&
	    !FUNC8(NFS_STATE_POSIX_LOCKS, &state->flags))
		return -ENOLCK;

	/*
	 * Don't rely on the VFS having checked the file open mode,
	 * since it won't do this for flock() locks.
	 */
	switch (request->fl_type) {
	case F_RDLCK:
		if (!(filp->f_mode & FMODE_READ))
			return -EBADF;
		break;
	case F_WRLCK:
		if (!(filp->f_mode & FMODE_WRITE))
			return -EBADF;
	}

	status = FUNC6(state, request);
	if (status != 0)
		return status;

	return FUNC5(state, cmd, request);
}