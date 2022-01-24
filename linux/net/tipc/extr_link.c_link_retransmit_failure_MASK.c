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
struct tipc_msg {int dummy; } ;
struct tipc_link {int /*<<< orphan*/  state; int /*<<< orphan*/  transmq; int /*<<< orphan*/  name; int /*<<< orphan*/  acked; int /*<<< orphan*/  tolerance; } ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  retr_cnt; scalar_t__ retr_stamp; } ;

/* Variables and functions */
 int /*<<< orphan*/  LINK_FAILURE_EVT ; 
 int /*<<< orphan*/  LINK_RESET ; 
 int /*<<< orphan*/  TIPC_DUMP_NONE ; 
 int TIPC_LINK_DOWN_EVT ; 
 TYPE_1__* FUNC0 (struct sk_buff*) ; 
 struct tipc_msg* FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct tipc_link*) ; 
 int /*<<< orphan*/  FUNC5 (struct tipc_link*,char*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct tipc_msg*) ; 
 int /*<<< orphan*/  FUNC8 (struct tipc_msg*) ; 
 int /*<<< orphan*/  FUNC9 (struct tipc_msg*) ; 
 int /*<<< orphan*/  FUNC10 (struct tipc_msg*) ; 
 int /*<<< orphan*/  FUNC11 (struct tipc_msg*) ; 
 int /*<<< orphan*/  FUNC12 (struct tipc_msg*) ; 
 int /*<<< orphan*/  FUNC13 (struct tipc_msg*) ; 
 int /*<<< orphan*/  FUNC14 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC15 (char*,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC18 (struct tipc_link*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct tipc_link*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int,char*) ; 

__attribute__((used)) static bool FUNC21(struct tipc_link *l, struct tipc_link *r,
				    int *rc)
{
	struct sk_buff *skb = FUNC16(&l->transmq);
	struct tipc_msg *hdr;

	if (!skb)
		return false;

	if (!FUNC0(skb)->retr_cnt)
		return false;

	if (!FUNC17(jiffies, FUNC0(skb)->retr_stamp +
			FUNC6(r->tolerance)))
		return false;

	hdr = FUNC1(skb);
	if (FUNC4(l) && !FUNC3(r->acked, FUNC10(hdr)))
		return false;

	FUNC15("Retransmission failure on link <%s>\n", l->name);
	FUNC5(l, "State of link ");
	FUNC14("Failed msg: usr %u, typ %u, len %u, err %u\n",
		FUNC13(hdr), FUNC12(hdr), FUNC11(hdr), FUNC8(hdr));
	FUNC14("sqno %u, prev: %x, dest: %x\n",
		FUNC10(hdr), FUNC9(hdr), FUNC7(hdr));
	FUNC14("retr_stamp %d, retr_cnt %d\n",
		FUNC2(FUNC0(skb)->retr_stamp),
		FUNC0(skb)->retr_cnt);

	FUNC20(&l->transmq, true, "retrans failure!");
	FUNC19(l, TIPC_DUMP_NONE, "retrans failure!");
	FUNC19(r, TIPC_DUMP_NONE, "retrans failure!");

	if (FUNC4(l)) {
		r->state = LINK_RESET;
		*rc = TIPC_LINK_DOWN_EVT;
	} else {
		*rc = FUNC18(l, LINK_FAILURE_EVT);
	}

	return true;
}