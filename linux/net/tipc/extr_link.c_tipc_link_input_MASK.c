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
struct TYPE_2__ {int /*<<< orphan*/  recv_fragmented; int /*<<< orphan*/  recv_fragments; int /*<<< orphan*/  recv_bundled; int /*<<< orphan*/  recv_bundles; } ;
struct tipc_link {int /*<<< orphan*/  net; int /*<<< orphan*/  bc_rcvlink; TYPE_1__ stats; } ;
struct sk_buff_head {int dummy; } ;
struct sk_buff {int dummy; } ;

/* Variables and functions */
 int BCAST_PROTOCOL ; 
 int /*<<< orphan*/  LINK_FAILURE_EVT ; 
 int MSG_BUNDLER ; 
 int MSG_FRAGMENTER ; 
 struct tipc_msg* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct tipc_link*) ; 
 scalar_t__ FUNC3 (struct tipc_msg*) ; 
 int FUNC4 (struct tipc_msg*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct sk_buff**,struct sk_buff**) ; 
 int /*<<< orphan*/  FUNC10 (struct tipc_link*,struct sk_buff*,struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,struct tipc_msg*) ; 
 int FUNC12 (struct tipc_link*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (struct sk_buff*,struct sk_buff**,int*) ; 
 int /*<<< orphan*/  FUNC14 (struct sk_buff_head*,struct sk_buff_head*) ; 

__attribute__((used)) static int FUNC15(struct tipc_link *l, struct sk_buff *skb,
			   struct sk_buff_head *inputq,
			   struct sk_buff **reasm_skb)
{
	struct tipc_msg *hdr = FUNC0(skb);
	struct sk_buff *iskb;
	struct sk_buff_head tmpq;
	int usr = FUNC4(hdr);
	int pos = 0;

	if (usr == MSG_BUNDLER) {
		FUNC6(&tmpq);
		l->stats.recv_bundles++;
		l->stats.recv_bundled += FUNC3(hdr);
		while (FUNC13(skb, &iskb, &pos))
			FUNC10(l, iskb, &tmpq);
		FUNC14(&tmpq, inputq);
		return 0;
	} else if (usr == MSG_FRAGMENTER) {
		l->stats.recv_fragments++;
		if (FUNC9(reasm_skb, &skb)) {
			l->stats.recv_fragmented++;
			FUNC10(l, skb, inputq);
		} else if (!*reasm_skb && !FUNC2(l)) {
			FUNC5("Unable to build fragment list\n");
			return FUNC12(l, LINK_FAILURE_EVT);
		}
		return 0;
	} else if (usr == BCAST_PROTOCOL) {
		FUNC7(l->net);
		FUNC11(l->bc_rcvlink, hdr);
		FUNC8(l->net);
	}

	FUNC1(skb);
	return 0;
}