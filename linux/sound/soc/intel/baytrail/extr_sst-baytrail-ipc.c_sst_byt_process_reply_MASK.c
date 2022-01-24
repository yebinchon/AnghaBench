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
typedef  int u64 ;
struct sst_byt {int /*<<< orphan*/  ipc; int /*<<< orphan*/  dsp; } ;
struct TYPE_2__ {int header; int /*<<< orphan*/  size; int /*<<< orphan*/  data; } ;
struct ipc_message {int /*<<< orphan*/  list; TYPE_1__ rx; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct sst_byt*,struct ipc_message*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ipc_message* FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct ipc_message*) ; 

__attribute__((used)) static int FUNC7(struct sst_byt *byt, u64 header)
{
	struct ipc_message *msg;

	msg = FUNC5(&byt->ipc, header);
	if (msg == NULL)
		return 1;

	msg->rx.header = header;
	if (header & FUNC0(true)) {
		msg->rx.size = FUNC2(header);
		FUNC4(byt->dsp, msg->rx.data, msg->rx.size);
	}

	/* update any stream states */
	FUNC3(byt, msg);

	FUNC1(&msg->list);
	/* wake up */
	FUNC6(&byt->ipc, msg);

	return 1;
}