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
struct sst_generic_ipc {int /*<<< orphan*/  empty_list; } ;
struct ipc_message {int complete; int /*<<< orphan*/  waitq; int /*<<< orphan*/  list; int /*<<< orphan*/  wait; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(struct sst_generic_ipc *ipc,
	struct ipc_message *msg)
{
	msg->complete = true;

	if (!msg->wait)
		FUNC0(&msg->list, &ipc->empty_list);
	else
		FUNC1(&msg->waitq);
}