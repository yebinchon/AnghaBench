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
struct nilfs_segctor_wait_request {int err; int /*<<< orphan*/  wq; int /*<<< orphan*/  done; scalar_t__ seq; } ;
struct nilfs_sc_info {int /*<<< orphan*/  sc_wait_request; int /*<<< orphan*/  sc_wait_daemon; int /*<<< orphan*/  sc_state_lock; scalar_t__ sc_seq_request; } ;

/* Variables and functions */
 int ERESTARTSYS ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC12(struct nilfs_sc_info *sci)
{
	struct nilfs_segctor_wait_request wait_req;
	int err = 0;

	FUNC9(&sci->sc_state_lock);
	FUNC4(&wait_req.wq);
	wait_req.err = 0;
	FUNC2(&wait_req.done, 0);
	wait_req.seq = ++sci->sc_seq_request;
	FUNC10(&sci->sc_state_lock);

	FUNC5(&wait_req.wq, current);
	FUNC0(&sci->sc_wait_request, &wait_req.wq);
	FUNC7(TASK_INTERRUPTIBLE);
	FUNC11(&sci->sc_wait_daemon);

	for (;;) {
		if (FUNC1(&wait_req.done)) {
			err = wait_req.err;
			break;
		}
		if (!FUNC8(current)) {
			FUNC6();
			continue;
		}
		err = -ERESTARTSYS;
		break;
	}
	FUNC3(&sci->sc_wait_request, &wait_req.wq);
	return err;
}