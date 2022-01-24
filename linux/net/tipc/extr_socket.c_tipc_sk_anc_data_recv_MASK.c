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
typedef  int u32 ;
struct tipc_sock {int conn_type; int conn_instance; } ;
struct tipc_msg {int dummy; } ;
struct sk_buff {int dummy; } ;
struct msghdr {scalar_t__ msg_controllen; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  SOL_TIPC ; 
#define  TIPC_CONN_MSG 130 
 int /*<<< orphan*/  TIPC_DESTNAME ; 
 int TIPC_DIRECT_MSG ; 
 int /*<<< orphan*/  TIPC_ERRINFO ; 
#define  TIPC_MCAST_MSG 129 
#define  TIPC_NAMED_MSG 128 
 int /*<<< orphan*/  TIPC_RETDATA ; 
 struct tipc_msg* FUNC0 (struct sk_buff*) ; 
 scalar_t__ FUNC1 (int) ; 
 int* FUNC2 (struct tipc_msg*) ; 
 int FUNC3 (struct tipc_msg*) ; 
 int FUNC4 (struct tipc_msg*) ; 
 int FUNC5 (struct tipc_msg*) ; 
 int FUNC6 (struct tipc_msg*) ; 
 int FUNC7 (struct tipc_msg*) ; 
 int FUNC8 (struct tipc_msg*) ; 
 int FUNC9 (struct msghdr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int*) ; 
 scalar_t__ FUNC10 (struct sk_buff*) ; 
 scalar_t__ FUNC11 (int) ; 

__attribute__((used)) static int FUNC12(struct msghdr *m, struct sk_buff *skb,
				 struct tipc_sock *tsk)
{
	struct tipc_msg *msg;
	u32 anc_data[3];
	u32 err;
	u32 dest_type;
	int has_name;
	int res;

	if (FUNC1(m->msg_controllen == 0))
		return 0;
	msg = FUNC0(skb);

	/* Optionally capture errored message object(s) */
	err = msg ? FUNC4(msg) : 0;
	if (FUNC11(err)) {
		anc_data[0] = err;
		anc_data[1] = FUNC3(msg);
		res = FUNC9(m, SOL_TIPC, TIPC_ERRINFO, 8, anc_data);
		if (res)
			return res;
		if (anc_data[1]) {
			if (FUNC10(skb))
				return -ENOMEM;
			msg = FUNC0(skb);
			res = FUNC9(m, SOL_TIPC, TIPC_RETDATA, anc_data[1],
				       FUNC2(msg));
			if (res)
				return res;
		}
	}

	/* Optionally capture message destination object */
	dest_type = msg ? FUNC8(msg) : TIPC_DIRECT_MSG;
	switch (dest_type) {
	case TIPC_NAMED_MSG:
		has_name = 1;
		anc_data[0] = FUNC6(msg);
		anc_data[1] = FUNC5(msg);
		anc_data[2] = FUNC5(msg);
		break;
	case TIPC_MCAST_MSG:
		has_name = 1;
		anc_data[0] = FUNC6(msg);
		anc_data[1] = FUNC5(msg);
		anc_data[2] = FUNC7(msg);
		break;
	case TIPC_CONN_MSG:
		has_name = (tsk->conn_type != 0);
		anc_data[0] = tsk->conn_type;
		anc_data[1] = tsk->conn_instance;
		anc_data[2] = tsk->conn_instance;
		break;
	default:
		has_name = 0;
	}
	if (has_name) {
		res = FUNC9(m, SOL_TIPC, TIPC_DESTNAME, 12, anc_data);
		if (res)
			return res;
	}

	return 0;
}