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
struct msgque_data {int msq_id; int mode; int qnum; TYPE_1__* messages; int /*<<< orphan*/  key; } ;
struct TYPE_2__ {int /*<<< orphan*/  msize; int /*<<< orphan*/  mtype; } ;

/* Variables and functions */
 int EFAULT ; 
 int IPC_CREAT ; 
 int IPC_EXCL ; 
 int /*<<< orphan*/  IPC_NOWAIT ; 
 int /*<<< orphan*/  IPC_RMID ; 
 int /*<<< orphan*/  O_WRONLY ; 
 int errno ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int) ; 
 int FUNC6 (char*) ; 
 int FUNC7 (int,char*,int) ; 

int FUNC8(struct msgque_data *msgque)
{
	int fd, ret, id, i;
	char buf[32];

	fd = FUNC3("/proc/sys/kernel/msg_next_id", O_WRONLY);
	if (fd == -1) {
		FUNC4("Failed to open /proc/sys/kernel/msg_next_id\n");
		return -errno;
	}
	FUNC5(buf, "%d", msgque->msq_id);

	ret = FUNC7(fd, buf, FUNC6(buf));
	if (ret != FUNC6(buf)) {
		FUNC4("Failed to write to /proc/sys/kernel/msg_next_id\n");
		return -errno;
	}

	id = FUNC1(msgque->key, msgque->mode | IPC_CREAT | IPC_EXCL);
	if (id == -1) {
		FUNC4("Failed to create queue\n");
		return -errno;
	}

	if (id != msgque->msq_id) {
		FUNC4("Restored queue has wrong id (%d instead of %d)\n",
							id, msgque->msq_id);
		ret = -EFAULT;
		goto destroy;
	}

	for (i = 0; i < msgque->qnum; i++) {
		if (FUNC2(msgque->msq_id, &msgque->messages[i].mtype,
			   msgque->messages[i].msize, IPC_NOWAIT) != 0) {
			FUNC4("msgsnd failed (%m)\n");
			ret = -errno;
			goto destroy;
		};
	}
	return 0;

destroy:
	if (FUNC0(id, IPC_RMID, NULL))
		FUNC4("Failed to destroy queue: %d\n", -errno);
	return ret;
}