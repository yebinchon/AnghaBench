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
struct rpc_wait_queue {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  RPC_NR_PRIORITY ; 
 int /*<<< orphan*/  FUNC0 (struct rpc_wait_queue*,char const*,int /*<<< orphan*/ ) ; 

void FUNC1(struct rpc_wait_queue *queue, const char *qname)
{
	FUNC0(queue, qname, RPC_NR_PRIORITY);
}