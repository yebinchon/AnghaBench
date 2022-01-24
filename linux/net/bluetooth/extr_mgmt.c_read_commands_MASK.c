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
typedef  int u16 ;
struct sock {int dummy; } ;
struct mgmt_rp_read_commands {int /*<<< orphan*/ * opcodes; void* num_events; void* num_commands; } ;
struct hci_dev {int dummy; } ;
typedef  int /*<<< orphan*/  __le16 ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,struct sock*) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  HCI_SOCK_TRUSTED ; 
 int /*<<< orphan*/  MGMT_INDEX_NONE ; 
 int /*<<< orphan*/  MGMT_OP_READ_COMMANDS ; 
 void* FUNC2 (int) ; 
 scalar_t__ FUNC3 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mgmt_rp_read_commands*) ; 
 struct mgmt_rp_read_commands* FUNC5 (size_t,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mgmt_rp_read_commands*,size_t) ; 
 int /*<<< orphan*/ * mgmt_commands ; 
 int /*<<< orphan*/ * mgmt_events ; 
 int /*<<< orphan*/ * mgmt_untrusted_commands ; 
 int /*<<< orphan*/ * mgmt_untrusted_events ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct sock *sk, struct hci_dev *hdev, void *data,
			 u16 data_len)
{
	struct mgmt_rp_read_commands *rp;
	u16 num_commands, num_events;
	size_t rp_size;
	int i, err;

	FUNC1("sock %p", sk);

	if (FUNC3(sk, HCI_SOCK_TRUSTED)) {
		num_commands = FUNC0(mgmt_commands);
		num_events = FUNC0(mgmt_events);
	} else {
		num_commands = FUNC0(mgmt_untrusted_commands);
		num_events = FUNC0(mgmt_untrusted_events);
	}

	rp_size = sizeof(*rp) + ((num_commands + num_events) * sizeof(u16));

	rp = FUNC5(rp_size, GFP_KERNEL);
	if (!rp)
		return -ENOMEM;

	rp->num_commands = FUNC2(num_commands);
	rp->num_events = FUNC2(num_events);

	if (FUNC3(sk, HCI_SOCK_TRUSTED)) {
		__le16 *opcode = rp->opcodes;

		for (i = 0; i < num_commands; i++, opcode++)
			FUNC7(mgmt_commands[i], opcode);

		for (i = 0; i < num_events; i++, opcode++)
			FUNC7(mgmt_events[i], opcode);
	} else {
		__le16 *opcode = rp->opcodes;

		for (i = 0; i < num_commands; i++, opcode++)
			FUNC7(mgmt_untrusted_commands[i], opcode);

		for (i = 0; i < num_events; i++, opcode++)
			FUNC7(mgmt_untrusted_events[i], opcode);
	}

	err = FUNC6(sk, MGMT_INDEX_NONE, MGMT_OP_READ_COMMANDS, 0,
				rp, rp_size);
	FUNC4(rp);

	return err;
}