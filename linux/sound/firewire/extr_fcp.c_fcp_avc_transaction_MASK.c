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
typedef  int u8 ;
struct fw_unit {int /*<<< orphan*/  device; } ;
struct fcp_transaction {unsigned int response_size; unsigned int response_match_bytes; scalar_t__ state; int deferrable; int /*<<< orphan*/  list; struct fw_unit* unit; int /*<<< orphan*/  wait; void* response_buffer; } ;

/* Variables and functions */
 scalar_t__ CSR_FCP_COMMAND ; 
 scalar_t__ CSR_REGISTER_BASE ; 
 int EIO ; 
 int /*<<< orphan*/  ERROR_DELAY_MS ; 
 int ERROR_RETRIES ; 
 int /*<<< orphan*/  FCP_TIMEOUT_MS ; 
 scalar_t__ STATE_BUS_RESET ; 
 scalar_t__ STATE_COMPLETE ; 
 scalar_t__ STATE_DEFERRED ; 
 scalar_t__ STATE_PENDING ; 
 int TCODE_WRITE_BLOCK_REQUEST ; 
 int TCODE_WRITE_QUADLET_REQUEST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct fw_unit*,int,scalar_t__,void*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  transactions ; 
 int /*<<< orphan*/  transactions_lock ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

int FUNC10(struct fw_unit *unit,
			const void *command, unsigned int command_size,
			void *response, unsigned int response_size,
			unsigned int response_match_bytes)
{
	struct fcp_transaction t;
	int tcode, ret, tries = 0;

	t.unit = unit;
	t.response_buffer = response;
	t.response_size = response_size;
	t.response_match_bytes = response_match_bytes;
	t.state = STATE_PENDING;
	FUNC1(&t.wait);

	if (*(const u8 *)command == 0x00 || *(const u8 *)command == 0x03)
		t.deferrable = true;

	FUNC7(&transactions_lock);
	FUNC2(&t.list, &transactions);
	FUNC8(&transactions_lock);

	for (;;) {
		tcode = command_size == 4 ? TCODE_WRITE_QUADLET_REQUEST
					  : TCODE_WRITE_BLOCK_REQUEST;
		ret = FUNC6(t.unit, tcode,
					 CSR_REGISTER_BASE + CSR_FCP_COMMAND,
					 (void *)command, command_size, 0);
		if (ret < 0)
			break;
deferred:
		FUNC9(t.wait, t.state != STATE_PENDING,
				   FUNC4(FCP_TIMEOUT_MS));

		if (t.state == STATE_DEFERRED) {
			/*
			 * 'AV/C General Specification' define no time limit
			 * on command completion once an INTERIM response has
			 * been sent. but we promise to finish this function
			 * for a caller. Here we use FCP_TIMEOUT_MS for next
			 * interval. This is not in the specification.
			 */
			t.state = STATE_PENDING;
			goto deferred;
		} else if (t.state == STATE_COMPLETE) {
			ret = t.response_size;
			break;
		} else if (t.state == STATE_BUS_RESET) {
			FUNC5(ERROR_DELAY_MS);
		} else if (++tries >= ERROR_RETRIES) {
			FUNC0(&t.unit->device, "FCP command timed out\n");
			ret = -EIO;
			break;
		}
	}

	FUNC7(&transactions_lock);
	FUNC3(&t.list);
	FUNC8(&transactions_lock);

	return ret;
}