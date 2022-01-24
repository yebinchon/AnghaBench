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
struct TYPE_2__ {int header; int /*<<< orphan*/  size; int /*<<< orphan*/  data; } ;
struct ipc_message {TYPE_1__ tx; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  SST_IPCX ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct sst_generic_ipc *ipc, struct ipc_message *msg)
{
	if (msg->tx.header & FUNC0(true))
		FUNC1(ipc->dsp, msg->tx.data, msg->tx.size);

	FUNC2(ipc->dsp, SST_IPCX, msg->tx.header);
}