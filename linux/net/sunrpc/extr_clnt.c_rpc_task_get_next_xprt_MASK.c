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
struct rpc_xprt {int dummy; } ;
struct rpc_clnt {int /*<<< orphan*/  cl_xpi; } ;

/* Variables and functions */
 struct rpc_xprt* FUNC0 (struct rpc_clnt*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct rpc_xprt *
FUNC2(struct rpc_clnt *clnt)
{
	return FUNC0(clnt, FUNC1(&clnt->cl_xpi));
}