#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sst_generic_ipc {int /*<<< orphan*/  dsp; } ;
struct TYPE_2__ {int /*<<< orphan*/  header; int /*<<< orphan*/  size; int /*<<< orphan*/  data; } ;
struct ipc_message {TYPE_1__ tx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct sst_generic_ipc *ipc, struct ipc_message *msg)
{
	/* send the message */
	FUNC1(ipc->dsp, msg->tx.data, msg->tx.size);
	FUNC0(ipc->dsp, msg->tx.header);
}