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
struct super_block {int dummy; } ;
struct rpc_clnt {int dummy; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rpc_clnt*) ; 
 struct super_block* FUNC1 (struct net*) ; 
 struct net* FUNC2 (struct rpc_clnt*) ; 
 int /*<<< orphan*/  FUNC3 (struct net*) ; 

__attribute__((used)) static void FUNC4(struct rpc_clnt *clnt)
{
	struct net *net = FUNC2(clnt);
	struct super_block *pipefs_sb;

	pipefs_sb = FUNC1(net);
	if (pipefs_sb) {
		FUNC0(clnt);
		FUNC3(net);
	}
}