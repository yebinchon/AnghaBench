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
struct rpc_task {int dummy; } ;
struct rpc_cred {int dummy; } ;
struct rpc_clnt {int dummy; } ;

/* Variables and functions */
 struct rpc_task* FUNC0 (struct rpc_clnt*,int /*<<< orphan*/ *,struct rpc_cred*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

struct rpc_task *FUNC1(struct rpc_clnt *clnt, struct rpc_cred *cred, int flags)
{
	return FUNC0(clnt, NULL, cred, flags, NULL, NULL);
}