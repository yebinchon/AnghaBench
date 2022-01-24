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
struct rpc_xprt {int /*<<< orphan*/ * address_strings; } ;

/* Variables and functions */
 size_t RPC_DISPLAY_HEX_PORT ; 
 size_t RPC_DISPLAY_PORT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rpc_xprt*) ; 

__attribute__((used)) static void FUNC2(struct rpc_xprt *xprt)
{
	FUNC0(xprt->address_strings[RPC_DISPLAY_HEX_PORT]);
	FUNC0(xprt->address_strings[RPC_DISPLAY_PORT]);

	FUNC1(xprt);
}