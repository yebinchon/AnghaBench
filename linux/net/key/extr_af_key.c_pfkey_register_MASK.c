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
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct sadb_msg {int sadb_msg_satype; } ;
struct pfkey_sock {int registered; } ;

/* Variables and functions */
 int /*<<< orphan*/  BROADCAST_REGISTERED ; 
 int EEXIST ; 
 int EINVAL ; 
 int ENOBUFS ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int SADB_SATYPE_MAX ; 
 int SADB_SATYPE_UNSPEC ; 
 struct sk_buff* FUNC0 (struct sadb_msg const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sock*,int /*<<< orphan*/ ) ; 
 struct pfkey_sock* FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static int FUNC5(struct sock *sk, struct sk_buff *skb, const struct sadb_msg *hdr, void * const *ext_hdrs)
{
	struct pfkey_sock *pfk = FUNC2(sk);
	struct sk_buff *supp_skb;

	if (hdr->sadb_msg_satype > SADB_SATYPE_MAX)
		return -EINVAL;

	if (hdr->sadb_msg_satype != SADB_SATYPE_UNSPEC) {
		if (pfk->registered&(1<<hdr->sadb_msg_satype))
			return -EEXIST;
		pfk->registered |= (1<<hdr->sadb_msg_satype);
	}

	FUNC4();

	supp_skb = FUNC0(hdr, GFP_KERNEL);
	if (!supp_skb) {
		if (hdr->sadb_msg_satype != SADB_SATYPE_UNSPEC)
			pfk->registered &= ~(1<<hdr->sadb_msg_satype);

		return -ENOBUFS;
	}

	FUNC1(supp_skb, GFP_KERNEL, BROADCAST_REGISTERED, sk,
			FUNC3(sk));
	return 0;
}