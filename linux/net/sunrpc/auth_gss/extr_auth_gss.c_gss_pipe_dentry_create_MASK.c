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
struct rpc_pipe_dir_object {struct gss_pipe* pdo_data; } ;
struct gss_pipe {TYPE_1__* pipe; int /*<<< orphan*/  clnt; int /*<<< orphan*/  name; } ;
struct dentry {int dummy; } ;
struct TYPE_2__ {struct dentry* dentry; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct dentry*) ; 
 int FUNC1 (struct dentry*) ; 
 struct dentry* FUNC2 (struct dentry*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 

__attribute__((used)) static int FUNC3(struct dentry *dir,
		struct rpc_pipe_dir_object *pdo)
{
	struct gss_pipe *p = pdo->pdo_data;
	struct dentry *dentry;

	dentry = FUNC2(dir, p->name, p->clnt, p->pipe);
	if (FUNC0(dentry))
		return FUNC1(dentry);
	p->pipe->dentry = dentry;
	return 0;
}