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
typedef  int /*<<< orphan*/  wait_queue_entry_t ;
typedef  int u32 ;
struct mixart_msg {int dummy; } ;
struct mixart_mgr {TYPE_1__* pci; int /*<<< orphan*/  msg_sleep; int /*<<< orphan*/  msg_lock; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 int MSG_CANCEL_NOTIFY_MASK ; 
 int /*<<< orphan*/  MSG_DEFAULT_SIZE ; 
 int /*<<< orphan*/  MSG_TIMEOUT_JIFFIES ; 
 int MSG_TYPE_MASK ; 
 int MSG_TYPE_NOTIFY ; 
 int /*<<< orphan*/  TASK_UNINTERRUPTIBLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 long FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (struct mixart_mgr*,struct mixart_msg*,int /*<<< orphan*/ ,int,int*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int) ; 

int FUNC10(struct mixart_mgr *mgr,
				   struct mixart_msg *request, u32 notif_event)
{
	int err;
	wait_queue_entry_t wait;
	long timeout;

	if (FUNC9(!notif_event))
		return -EINVAL;
	if (FUNC9((notif_event & MSG_TYPE_MASK) != MSG_TYPE_NOTIFY))
		return -EINVAL;
	if (FUNC9(notif_event & MSG_CANCEL_NOTIFY_MASK))
		return -EINVAL;

	FUNC2(&wait, current);

	FUNC3(&mgr->msg_lock);
	/* send the message */
	err = FUNC7(mgr, request, MSG_DEFAULT_SIZE, 1, &notif_event);  /* send and mark the notification event pending */
	if(err) {
		FUNC4(&mgr->msg_lock);
		return err;
	}

	FUNC8(TASK_UNINTERRUPTIBLE);
	FUNC0(&mgr->msg_sleep, &wait);
	FUNC4(&mgr->msg_lock);
	timeout = FUNC6(MSG_TIMEOUT_JIFFIES);
	FUNC5(&mgr->msg_sleep, &wait);

	if (! timeout) {
		/* error - no ack */
		FUNC1(&mgr->pci->dev,
			"error: notification %x not received\n", notif_event);
		return -EIO;
	}

	return 0;
}