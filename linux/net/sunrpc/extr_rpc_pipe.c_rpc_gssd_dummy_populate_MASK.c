#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct rpc_pipe {int dummy; } ;
struct qstr {int /*<<< orphan*/  len; int /*<<< orphan*/  name; } ;
struct dentry {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  name; } ;
struct TYPE_6__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int ENOENT ; 
 struct dentry* FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct dentry*) ; 
 struct qstr FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t RPCAUTH_gssd ; 
 int /*<<< orphan*/  FUNC3 (struct dentry*,TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 struct dentry* FUNC4 (struct dentry*,struct qstr*) ; 
 int /*<<< orphan*/  FUNC5 (struct dentry*) ; 
 TYPE_4__* files ; 
 TYPE_1__* gssd_dummy_clnt_dir ; 
 TYPE_1__* gssd_dummy_info_file ; 
 struct dentry* FUNC6 (struct dentry*,char*,int /*<<< orphan*/ *,struct rpc_pipe*) ; 
 int FUNC7 (struct dentry*,TYPE_1__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct dentry *
FUNC9(struct dentry *root, struct rpc_pipe *pipe_data)
{
	int ret = 0;
	struct dentry *gssd_dentry;
	struct dentry *clnt_dentry = NULL;
	struct dentry *pipe_dentry = NULL;
	struct qstr q = FUNC2(files[RPCAUTH_gssd].name,
				  FUNC8(files[RPCAUTH_gssd].name));

	/* We should never get this far if "gssd" doesn't exist */
	gssd_dentry = FUNC4(root, &q);
	if (!gssd_dentry)
		return FUNC0(-ENOENT);

	ret = FUNC7(gssd_dentry, gssd_dummy_clnt_dir, 0, 1, NULL);
	if (ret) {
		pipe_dentry = FUNC0(ret);
		goto out;
	}

	q.name = gssd_dummy_clnt_dir[0].name;
	q.len = FUNC8(gssd_dummy_clnt_dir[0].name);
	clnt_dentry = FUNC4(gssd_dentry, &q);
	if (!clnt_dentry) {
		pipe_dentry = FUNC0(-ENOENT);
		goto out;
	}

	ret = FUNC7(clnt_dentry, gssd_dummy_info_file, 0, 1, NULL);
	if (ret) {
		FUNC3(gssd_dentry, gssd_dummy_clnt_dir, 0, 1);
		pipe_dentry = FUNC0(ret);
		goto out;
	}

	pipe_dentry = FUNC6(clnt_dentry, "gssd", NULL, pipe_data);
	if (FUNC1(pipe_dentry)) {
		FUNC3(clnt_dentry, gssd_dummy_info_file, 0, 1);
		FUNC3(gssd_dentry, gssd_dummy_clnt_dir, 0, 1);
	}
out:
	FUNC5(clnt_dentry);
	FUNC5(gssd_dentry);
	return pipe_dentry;
}