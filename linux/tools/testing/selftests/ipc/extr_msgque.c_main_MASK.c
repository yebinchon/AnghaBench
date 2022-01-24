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
struct msgque_data {int key; int msq_id; } ;

/* Variables and functions */
 int IPC_CREAT ; 
 int IPC_EXCL ; 
 int /*<<< orphan*/  IPC_RMID ; 
 int FUNC0 (struct msgque_data*) ; 
 int FUNC1 (struct msgque_data*) ; 
 int errno ; 
 int FUNC2 (struct msgque_data*) ; 
 int FUNC3 (char*,int) ; 
 scalar_t__ FUNC4 () ; 
 int FUNC5 () ; 
 int FUNC6 () ; 
 int FUNC7 (char*) ; 
 scalar_t__ FUNC8 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC9 (int,int) ; 
 int /*<<< orphan*/  FUNC10 (char*,int) ; 
 int FUNC11 (struct msgque_data*) ; 

int FUNC12(int argc, char **argv)
{
	int msg, pid, err;
	struct msgque_data msgque;

	if (FUNC4() != 0)
		return FUNC7(
				"Please run the test as root - Exiting.\n");

	msgque.key = FUNC3(argv[0], 822155650);
	if (msgque.key == -1) {
		FUNC10("Can't make key: %d\n", -errno);
		return FUNC5();
	}

	msgque.msq_id = FUNC9(msgque.key, IPC_CREAT | IPC_EXCL | 0666);
	if (msgque.msq_id == -1) {
		err = -errno;
		FUNC10("Can't create queue: %d\n", err);
		goto err_out;
	}

	err = FUNC2(&msgque);
	if (err) {
		FUNC10("Failed to fill queue: %d\n", err);
		goto err_destroy;
	}

	err = FUNC1(&msgque);
	if (err) {
		FUNC10("Failed to dump queue: %d\n", err);
		goto err_destroy;
	}

	err = FUNC0(&msgque);
	if (err) {
		FUNC10("Failed to check and destroy queue: %d\n", err);
		goto err_out;
	}

	err = FUNC11(&msgque);
	if (err) {
		FUNC10("Failed to restore queue: %d\n", err);
		goto err_destroy;
	}

	err = FUNC0(&msgque);
	if (err) {
		FUNC10("Failed to test queue: %d\n", err);
		goto err_out;
	}
	return FUNC6();

err_destroy:
	if (FUNC8(msgque.msq_id, IPC_RMID, NULL)) {
		FUNC10("Failed to destroy queue: %d\n", -errno);
		return FUNC5();
	}
err_out:
	return FUNC5();
}