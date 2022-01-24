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
struct rpcbind_args {struct rpcbind_args* r_addr; int /*<<< orphan*/  r_xprt; int /*<<< orphan*/  r_status; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rpcbind_args*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(void *data)
{
	struct rpcbind_args *map = data;

	FUNC1(map->r_xprt, map->r_status);
	FUNC2(map->r_xprt);
	FUNC0(map->r_addr);
	FUNC0(map);
}