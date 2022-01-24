#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  label; TYPE_3__* fattr; int /*<<< orphan*/  fh; int /*<<< orphan*/  dir_cinfo; int /*<<< orphan*/  seq_res; } ;
struct TYPE_6__ {scalar_t__ ftype; int /*<<< orphan*/  seq_args; } ;
struct nfs4_createdata {TYPE_2__ res; TYPE_1__ arg; int /*<<< orphan*/  msg; } ;
struct inode {int /*<<< orphan*/  i_lock; } ;
struct dentry {int dummy; } ;
struct TYPE_9__ {int /*<<< orphan*/  client; } ;
struct TYPE_8__ {int /*<<< orphan*/  time_start; } ;

/* Variables and functions */
 scalar_t__ NF4DIR ; 
 TYPE_4__* FUNC0 (struct inode*) ; 
 int FUNC1 (int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 int FUNC3 (struct dentry*,int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct inode *dir, struct dentry *dentry, struct nfs4_createdata *data)
{
	int status = FUNC1(FUNC0(dir)->client, FUNC0(dir), &data->msg,
				    &data->arg.seq_args, &data->res.seq_res, 1);
	if (status == 0) {
		FUNC4(&dir->i_lock);
		FUNC6(dir, &data->res.dir_cinfo,
				data->res.fattr->time_start, 0);
		/* Creating a directory bumps nlink in the parent */
		if (data->arg.ftype == NF4DIR)
			FUNC2(dir);
		FUNC5(&dir->i_lock);
		status = FUNC3(dentry, data->res.fh, data->res.fattr, data->res.label);
	}
	return status;
}