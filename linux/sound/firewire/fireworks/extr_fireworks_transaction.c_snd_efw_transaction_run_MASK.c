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
struct transaction_queue {unsigned int size; scalar_t__ state; int /*<<< orphan*/  list; struct fw_unit* unit; int /*<<< orphan*/  wait; scalar_t__ seqnum; void* buf; } ;
struct snd_efw_transaction {int /*<<< orphan*/  seqnum; } ;
struct fw_unit {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int /*<<< orphan*/  EFC_TIMEOUT_MS ; 
 int EIO ; 
 int /*<<< orphan*/  ERROR_DELAY_MS ; 
 unsigned int ERROR_RETRIES ; 
 scalar_t__ STATE_BUS_RESET ; 
 scalar_t__ STATE_COMPLETE ; 
 scalar_t__ STATE_PENDING ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (struct fw_unit*,void*,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  transaction_queues ; 
 int /*<<< orphan*/  transaction_queues_lock ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

int FUNC11(struct fw_unit *unit,
			    const void *cmd, unsigned int cmd_size,
			    void *resp, unsigned int resp_size)
{
	struct transaction_queue t;
	unsigned int tries;
	int ret;

	t.unit = unit;
	t.buf = resp;
	t.size = resp_size;
	t.seqnum = FUNC0(((struct snd_efw_transaction *)cmd)->seqnum) + 1;
	t.state = STATE_PENDING;
	FUNC2(&t.wait);

	FUNC8(&transaction_queues_lock);
	FUNC3(&t.list, &transaction_queues);
	FUNC9(&transaction_queues_lock);

	tries = 0;
	do {
		ret = FUNC7(t.unit, (void *)cmd, cmd_size);
		if (ret < 0)
			break;

		FUNC10(t.wait, t.state != STATE_PENDING,
				   FUNC5(EFC_TIMEOUT_MS));

		if (t.state == STATE_COMPLETE) {
			ret = t.size;
			break;
		} else if (t.state == STATE_BUS_RESET) {
			FUNC6(ERROR_DELAY_MS);
		} else if (++tries >= ERROR_RETRIES) {
			FUNC1(&t.unit->device, "EFW transaction timed out\n");
			ret = -EIO;
			break;
		}
	} while (1);

	FUNC8(&transaction_queues_lock);
	FUNC4(&t.list);
	FUNC9(&transaction_queues_lock);

	return ret;
}