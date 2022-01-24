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
struct xfrm_policy {int dummy; } ;
struct sock {int dummy; } ;
struct sk_buff {scalar_t__ data; } ;
struct sadb_msg {int /*<<< orphan*/  sadb_msg_pid; int /*<<< orphan*/  sadb_msg_seq; scalar_t__ sadb_msg_errno; scalar_t__ sadb_msg_satype; int /*<<< orphan*/  sadb_msg_type; int /*<<< orphan*/  sadb_msg_version; } ;

/* Variables and functions */
 int /*<<< orphan*/  BROADCAST_ONE ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__ FUNC0 (struct sk_buff*) ; 
 int FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sock*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct sk_buff*,struct xfrm_policy*,int) ; 
 struct sk_buff* FUNC5 (struct xfrm_policy*) ; 
 int /*<<< orphan*/  FUNC6 (struct xfrm_policy*) ; 

__attribute__((used)) static int FUNC7(struct sock *sk, struct xfrm_policy *xp, const struct sadb_msg *hdr, int dir)
{
	int err;
	struct sk_buff *out_skb;
	struct sadb_msg *out_hdr;
	err = 0;

	out_skb = FUNC5(xp);
	if (FUNC0(out_skb)) {
		err =  FUNC1(out_skb);
		goto out;
	}
	err = FUNC4(out_skb, xp, dir);
	if (err < 0) {
		FUNC2(out_skb);
		goto out;
	}

	out_hdr = (struct sadb_msg *) out_skb->data;
	out_hdr->sadb_msg_version = hdr->sadb_msg_version;
	out_hdr->sadb_msg_type = hdr->sadb_msg_type;
	out_hdr->sadb_msg_satype = 0;
	out_hdr->sadb_msg_errno = 0;
	out_hdr->sadb_msg_seq = hdr->sadb_msg_seq;
	out_hdr->sadb_msg_pid = hdr->sadb_msg_pid;
	FUNC3(out_skb, GFP_ATOMIC, BROADCAST_ONE, sk, FUNC6(xp));
	err = 0;

out:
	return err;
}