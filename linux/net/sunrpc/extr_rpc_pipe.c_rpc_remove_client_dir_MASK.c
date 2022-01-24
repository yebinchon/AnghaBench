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
struct TYPE_2__ {struct dentry* pdh_dentry; } ;
struct rpc_clnt {TYPE_1__ cl_pipedir_objects; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  rpc_clntdir_depopulate ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int FUNC1 (struct dentry*,int /*<<< orphan*/ ) ; 

int FUNC2(struct rpc_clnt *rpc_client)
{
	struct dentry *dentry = rpc_client->cl_pipedir_objects.pdh_dentry;

	if (dentry == NULL)
		return 0;
	FUNC0(&rpc_client->cl_pipedir_objects);
	rpc_client->cl_pipedir_objects.pdh_dentry = NULL;
	return FUNC1(dentry, rpc_clntdir_depopulate);
}