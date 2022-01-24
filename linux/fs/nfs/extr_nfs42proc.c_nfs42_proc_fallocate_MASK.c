#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct rpc_message {int dummy; } ;
struct nfs_server {int dummy; } ;
struct nfs_lock_context {TYPE_1__* open_context; } ;
struct nfs4_exception {scalar_t__ retry; int /*<<< orphan*/  state; int /*<<< orphan*/  inode; } ;
struct file {int dummy; } ;
typedef  int /*<<< orphan*/  loff_t ;
struct TYPE_2__ {int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int ENOTSUPP ; 
 int EOPNOTSUPP ; 
 scalar_t__ FUNC0 (struct nfs_lock_context*) ; 
 struct nfs_server* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct nfs_lock_context*) ; 
 int FUNC3 (struct rpc_message*,struct file*,struct nfs_lock_context*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct file*) ; 
 int FUNC5 (struct nfs_server*,int,struct nfs4_exception*) ; 
 int /*<<< orphan*/  FUNC6 (struct file*) ; 
 struct nfs_lock_context* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct nfs_lock_context*) ; 

__attribute__((used)) static int FUNC9(struct rpc_message *msg, struct file *filep,
				loff_t offset, loff_t len)
{
	struct nfs_server *server = FUNC1(FUNC4(filep));
	struct nfs4_exception exception = { };
	struct nfs_lock_context *lock;
	int err;

	lock = FUNC7(FUNC6(filep));
	if (FUNC0(lock))
		return FUNC2(lock);

	exception.inode = FUNC4(filep);
	exception.state = lock->open_context->state;

	do {
		err = FUNC3(msg, filep, lock, offset, len);
		if (err == -ENOTSUPP) {
			err = -EOPNOTSUPP;
			break;
		}
		err = FUNC5(server, err, &exception);
	} while (exception.retry);

	FUNC8(lock);
	return err;
}