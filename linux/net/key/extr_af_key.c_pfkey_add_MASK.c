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
struct TYPE_2__ {int /*<<< orphan*/  state; } ;
struct xfrm_state {TYPE_1__ km; } ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct sadb_msg {scalar_t__ sadb_msg_type; int /*<<< orphan*/  sadb_msg_pid; int /*<<< orphan*/  sadb_msg_seq; } ;
struct net {int dummy; } ;
struct km_event {int /*<<< orphan*/  portid; int /*<<< orphan*/  seq; int /*<<< orphan*/  event; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct xfrm_state*) ; 
 int FUNC1 (struct xfrm_state*) ; 
 scalar_t__ SADB_ADD ; 
 int /*<<< orphan*/  XFRM_MSG_NEWSA ; 
 int /*<<< orphan*/  XFRM_MSG_UPDSA ; 
 int /*<<< orphan*/  XFRM_STATE_DEAD ; 
 int /*<<< orphan*/  FUNC2 (struct xfrm_state*) ; 
 int /*<<< orphan*/  FUNC3 (struct xfrm_state*,struct km_event*) ; 
 struct xfrm_state* FUNC4 (struct net*,struct sadb_msg const*,void* const*) ; 
 struct net* FUNC5 (struct sock*) ; 
 int /*<<< orphan*/  FUNC6 (struct xfrm_state*,int,int) ; 
 int FUNC7 (struct xfrm_state*) ; 
 int /*<<< orphan*/  FUNC8 (struct xfrm_state*) ; 
 int /*<<< orphan*/  FUNC9 (struct xfrm_state*) ; 
 int FUNC10 (struct xfrm_state*) ; 

__attribute__((used)) static int FUNC11(struct sock *sk, struct sk_buff *skb, const struct sadb_msg *hdr, void * const *ext_hdrs)
{
	struct net *net = FUNC5(sk);
	struct xfrm_state *x;
	int err;
	struct km_event c;

	x = FUNC4(net, hdr, ext_hdrs);
	if (FUNC0(x))
		return FUNC1(x);

	FUNC8(x);
	if (hdr->sadb_msg_type == SADB_ADD)
		err = FUNC7(x);
	else
		err = FUNC10(x);

	FUNC6(x, err ? 0 : 1, true);

	if (err < 0) {
		x->km.state = XFRM_STATE_DEAD;
		FUNC2(x);
		goto out;
	}

	if (hdr->sadb_msg_type == SADB_ADD)
		c.event = XFRM_MSG_NEWSA;
	else
		c.event = XFRM_MSG_UPDSA;
	c.seq = hdr->sadb_msg_seq;
	c.portid = hdr->sadb_msg_pid;
	FUNC3(x, &c);
out:
	FUNC9(x);
	return err;
}