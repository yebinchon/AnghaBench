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
typedef  int /*<<< orphan*/  u16 ;
struct sock {int dummy; } ;
struct mgmt_cp_user_confirm_neg_reply {int /*<<< orphan*/  addr; } ;
struct hci_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  HCI_OP_USER_CONFIRM_NEG_REPLY ; 
 int /*<<< orphan*/  MGMT_OP_USER_CONFIRM_NEG_REPLY ; 
 int FUNC1 (struct sock*,struct hci_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct sock *sk, struct hci_dev *hdev,
				  void *data, u16 len)
{
	struct mgmt_cp_user_confirm_neg_reply *cp = data;

	FUNC0("");

	return FUNC1(sk, hdev, &cp->addr,
				 MGMT_OP_USER_CONFIRM_NEG_REPLY,
				 HCI_OP_USER_CONFIRM_NEG_REPLY, 0);
}