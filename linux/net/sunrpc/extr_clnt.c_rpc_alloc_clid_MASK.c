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
struct rpc_clnt {int cl_clid; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rpc_clids ; 

__attribute__((used)) static int FUNC1(struct rpc_clnt *clnt)
{
	int clid;

	clid = FUNC0(&rpc_clids, 0, 0, GFP_KERNEL);
	if (clid < 0)
		return clid;
	clnt->cl_clid = clid;
	return 0;
}