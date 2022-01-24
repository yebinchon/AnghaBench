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
typedef  scalar_t__ uint8_t ;
typedef  int /*<<< orphan*/  uint64_t ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct sadb_msg {int sadb_msg_len; scalar_t__ sadb_msg_errno; } ;

/* Variables and functions */
 int /*<<< orphan*/  BROADCAST_ONE ; 
 int ENOBUFS ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 struct sk_buff* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sock*,int /*<<< orphan*/ ) ; 
 struct sadb_msg* FUNC2 (struct sk_buff*,struct sadb_msg const*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 

__attribute__((used)) static int FUNC4(struct sock *sk, const struct sadb_msg *ihdr)
{
	struct sk_buff *skb;
	struct sadb_msg *hdr;

	skb = FUNC0(sizeof(struct sadb_msg) + 16, GFP_ATOMIC);
	if (!skb)
		return -ENOBUFS;

	hdr = FUNC2(skb, ihdr, sizeof(struct sadb_msg));
	hdr->sadb_msg_errno = (uint8_t) 0;
	hdr->sadb_msg_len = (sizeof(struct sadb_msg) / sizeof(uint64_t));

	return FUNC1(skb, GFP_ATOMIC, BROADCAST_ONE, sk,
			       FUNC3(sk));
}