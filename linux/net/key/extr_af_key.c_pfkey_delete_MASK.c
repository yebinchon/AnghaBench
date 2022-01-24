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
struct xfrm_state {int dummy; } ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct sadb_msg {int /*<<< orphan*/  sadb_msg_pid; int /*<<< orphan*/  sadb_msg_seq; } ;
struct net {int dummy; } ;
struct km_event {int /*<<< orphan*/  event; int /*<<< orphan*/  portid; int /*<<< orphan*/  seq; } ;

/* Variables and functions */
 int EINVAL ; 
 int EPERM ; 
 int ESRCH ; 
 int SADB_EXT_ADDRESS_DST ; 
 int SADB_EXT_ADDRESS_SRC ; 
 int SADB_EXT_SA ; 
 int /*<<< orphan*/  XFRM_MSG_DELSA ; 
 int /*<<< orphan*/  FUNC0 (struct xfrm_state*,struct km_event*) ; 
 struct xfrm_state* FUNC1 (struct net*,struct sadb_msg const*,void* const*) ; 
 int /*<<< orphan*/  FUNC2 (void* const,void* const) ; 
 int FUNC3 (struct xfrm_state*) ; 
 struct net* FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (struct xfrm_state*,int,int) ; 
 int FUNC6 (struct xfrm_state*) ; 
 scalar_t__ FUNC7 (struct xfrm_state*) ; 
 int /*<<< orphan*/  FUNC8 (struct xfrm_state*) ; 

__attribute__((used)) static int FUNC9(struct sock *sk, struct sk_buff *skb, const struct sadb_msg *hdr, void * const *ext_hdrs)
{
	struct net *net = FUNC4(sk);
	struct xfrm_state *x;
	struct km_event c;
	int err;

	if (!ext_hdrs[SADB_EXT_SA-1] ||
	    !FUNC2(ext_hdrs[SADB_EXT_ADDRESS_SRC-1],
				     ext_hdrs[SADB_EXT_ADDRESS_DST-1]))
		return -EINVAL;

	x = FUNC1(net, hdr, ext_hdrs);
	if (x == NULL)
		return -ESRCH;

	if ((err = FUNC3(x)))
		goto out;

	if (FUNC7(x)) {
		err = -EPERM;
		goto out;
	}

	err = FUNC6(x);

	if (err < 0)
		goto out;

	c.seq = hdr->sadb_msg_seq;
	c.portid = hdr->sadb_msg_pid;
	c.event = XFRM_MSG_DELSA;
	FUNC0(x, &c);
out:
	FUNC5(x, err ? 0 : 1, true);
	FUNC8(x);

	return err;
}