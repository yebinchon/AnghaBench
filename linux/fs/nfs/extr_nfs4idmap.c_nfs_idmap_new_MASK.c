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
struct rpc_pipe {int dummy; } ;
struct nfs_client {struct idmap* cl_idmap; TYPE_1__* cl_rpcclient; int /*<<< orphan*/  cl_net; } ;
struct idmap {int /*<<< orphan*/  cred; struct rpc_pipe* idmap_pipe; int /*<<< orphan*/  idmap_pdo; int /*<<< orphan*/  idmap_mutex; } ;
struct TYPE_2__ {int /*<<< orphan*/  cl_pipedir_objects; int /*<<< orphan*/  cl_cred; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct rpc_pipe*) ; 
 int FUNC1 (struct rpc_pipe*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  idmap_upcall_ops ; 
 int /*<<< orphan*/  FUNC3 (struct idmap*) ; 
 struct idmap* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nfs_idmap_pipe_dir_object_ops ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct rpc_pipe*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct idmap*) ; 
 struct rpc_pipe* FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int
FUNC11(struct nfs_client *clp)
{
	struct idmap *idmap;
	struct rpc_pipe *pipe;
	int error;

	idmap = FUNC4(sizeof(*idmap), GFP_KERNEL);
	if (idmap == NULL)
		return -ENOMEM;

	FUNC5(&idmap->idmap_mutex);
	idmap->cred = FUNC2(clp->cl_rpcclient->cl_cred);

	FUNC9(&idmap->idmap_pdo,
			&nfs_idmap_pipe_dir_object_ops,
			idmap);

	pipe = FUNC10(&idmap_upcall_ops, 0);
	if (FUNC0(pipe)) {
		error = FUNC1(pipe);
		goto err;
	}
	idmap->idmap_pipe = pipe;

	error = FUNC7(clp->cl_net,
			&clp->cl_rpcclient->cl_pipedir_objects,
			&idmap->idmap_pdo);
	if (error)
		goto err_destroy_pipe;

	clp->cl_idmap = idmap;
	return 0;
err_destroy_pipe:
	FUNC8(idmap->idmap_pipe);
err:
	FUNC6(idmap->cred);
	FUNC3(idmap);
	return error;
}