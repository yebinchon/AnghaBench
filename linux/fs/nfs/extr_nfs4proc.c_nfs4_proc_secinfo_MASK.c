#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct qstr {int dummy; } ;
struct nfs4_secinfo_flavors {int dummy; } ;
struct nfs4_exception {int interruptible; scalar_t__ retry; } ;
struct inode {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  nfs_client; } ;

/* Variables and functions */
 int NFS4ERR_WRONGSEC ; 
 TYPE_1__* FUNC0 (struct inode*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct inode*,struct qstr const*,struct nfs4_secinfo_flavors*,int) ; 
 int FUNC3 (TYPE_1__*,int,struct nfs4_exception*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*,struct qstr const*,int) ; 

int FUNC5(struct inode *dir, const struct qstr *name,
		      struct nfs4_secinfo_flavors *flavors)
{
	struct nfs4_exception exception = {
		.interruptible = true,
	};
	int err;
	do {
		err = -NFS4ERR_WRONGSEC;

		/* try to use integrity protection with machine cred */
		if (FUNC1(FUNC0(dir)->nfs_client))
			err = FUNC2(dir, name, flavors, true);

		/*
		 * if unable to use integrity protection, or SECINFO with
		 * integrity protection returns NFS4ERR_WRONGSEC (which is
		 * disallowed by spec, but exists in deployed servers) use
		 * the current filesystem's rpc_client and the user cred.
		 */
		if (err == -NFS4ERR_WRONGSEC)
			err = FUNC2(dir, name, flavors, false);

		FUNC4(dir, name, err);
		err = FUNC3(FUNC0(dir), err,
				&exception);
	} while (exception.retry);
	return err;
}