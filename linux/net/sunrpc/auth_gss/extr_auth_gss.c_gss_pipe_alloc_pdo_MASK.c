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
struct rpc_pipe_dir_object {int dummy; } ;
struct gss_pipe {struct rpc_pipe_dir_object pdo; } ;
struct gss_alloc_pdo {int /*<<< orphan*/  upcall_ops; int /*<<< orphan*/  name; int /*<<< orphan*/  clnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct gss_pipe*) ; 
 struct gss_pipe* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct rpc_pipe_dir_object *FUNC2(void *data)
{
	struct gss_pipe *gss_pipe;
	struct gss_alloc_pdo *args = data;

	gss_pipe = FUNC1(args->clnt, args->name, args->upcall_ops);
	if (!FUNC0(gss_pipe))
		return &gss_pipe->pdo;
	return NULL;
}