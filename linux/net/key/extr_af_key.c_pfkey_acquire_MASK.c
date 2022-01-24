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
struct TYPE_2__ {scalar_t__ state; } ;
struct xfrm_state {int /*<<< orphan*/  lock; TYPE_1__ km; } ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct sadb_msg {int sadb_msg_len; scalar_t__ sadb_msg_seq; scalar_t__ sadb_msg_errno; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DUMMY_MARK ; 
 int EOPNOTSUPP ; 
 scalar_t__ XFRM_STATE_ACQ ; 
 scalar_t__ XFRM_STATE_ERROR ; 
 struct net* FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct xfrm_state* FUNC3 (struct net*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct xfrm_state*) ; 

__attribute__((used)) static int FUNC5(struct sock *sk, struct sk_buff *skb, const struct sadb_msg *hdr, void * const *ext_hdrs)
{
	struct net *net = FUNC0(sk);
	struct xfrm_state *x;

	if (hdr->sadb_msg_len != sizeof(struct sadb_msg)/8)
		return -EOPNOTSUPP;

	if (hdr->sadb_msg_seq == 0 || hdr->sadb_msg_errno == 0)
		return 0;

	x = FUNC3(net, DUMMY_MARK, hdr->sadb_msg_seq);
	if (x == NULL)
		return 0;

	FUNC1(&x->lock);
	if (x->km.state == XFRM_STATE_ACQ)
		x->km.state = XFRM_STATE_ERROR;

	FUNC2(&x->lock);
	FUNC4(x);
	return 0;
}