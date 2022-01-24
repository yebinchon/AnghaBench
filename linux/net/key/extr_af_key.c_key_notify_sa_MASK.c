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
struct TYPE_2__ {int /*<<< orphan*/  proto; } ;
struct xfrm_state {TYPE_1__ id; } ;
struct sk_buff {scalar_t__ data; } ;
struct sadb_msg {int /*<<< orphan*/  sadb_msg_pid; int /*<<< orphan*/  sadb_msg_seq; scalar_t__ sadb_msg_reserved; scalar_t__ sadb_msg_errno; int /*<<< orphan*/  sadb_msg_satype; int /*<<< orphan*/  sadb_msg_type; int /*<<< orphan*/  sadb_msg_version; } ;
struct km_event {int /*<<< orphan*/  portid; int /*<<< orphan*/  seq; int /*<<< orphan*/  event; } ;

/* Variables and functions */
 int /*<<< orphan*/  BROADCAST_ALL ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__ FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  PF_KEY_V2 ; 
 int FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC5 (struct xfrm_state*) ; 
 int /*<<< orphan*/  FUNC6 (struct xfrm_state*) ; 

__attribute__((used)) static int FUNC7(struct xfrm_state *x, const struct km_event *c)
{
	struct sk_buff *skb;
	struct sadb_msg *hdr;

	skb = FUNC5(x);

	if (FUNC0(skb))
		return FUNC1(skb);

	hdr = (struct sadb_msg *) skb->data;
	hdr->sadb_msg_version = PF_KEY_V2;
	hdr->sadb_msg_type = FUNC2(c->event);
	hdr->sadb_msg_satype = FUNC4(x->id.proto);
	hdr->sadb_msg_errno = 0;
	hdr->sadb_msg_reserved = 0;
	hdr->sadb_msg_seq = c->seq;
	hdr->sadb_msg_pid = c->portid;

	FUNC3(skb, GFP_ATOMIC, BROADCAST_ALL, NULL, FUNC6(x));

	return 0;
}