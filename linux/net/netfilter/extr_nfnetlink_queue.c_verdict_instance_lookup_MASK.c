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
typedef  scalar_t__ u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct nfqnl_instance {scalar_t__ peer_portid; } ;
struct nfnl_queue_net {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENODEV ; 
 int /*<<< orphan*/  EPERM ; 
 struct nfqnl_instance* FUNC0 (int /*<<< orphan*/ ) ; 
 struct nfqnl_instance* FUNC1 (struct nfnl_queue_net*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct nfqnl_instance *
FUNC2(struct nfnl_queue_net *q, u16 queue_num, u32 nlportid)
{
	struct nfqnl_instance *queue;

	queue = FUNC1(q, queue_num);
	if (!queue)
		return FUNC0(-ENODEV);

	if (queue->peer_portid != nlportid)
		return FUNC0(-EPERM);

	return queue;
}