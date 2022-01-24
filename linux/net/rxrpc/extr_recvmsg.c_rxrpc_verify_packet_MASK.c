#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct sk_buff {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  cksum; int /*<<< orphan*/  seq; } ;
struct rxrpc_skb_priv {TYPE_2__ hdr; } ;
struct rxrpc_call {TYPE_1__* security; } ;
typedef  int /*<<< orphan*/  rxrpc_seq_t ;
typedef  int /*<<< orphan*/  __be16 ;
struct TYPE_3__ {int (* verify_packet ) (struct rxrpc_call*,struct sk_buff*,unsigned int,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ RXRPC_RX_ANNO_SUBPACKET ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct rxrpc_skb_priv* FUNC3 (struct sk_buff*) ; 
 scalar_t__ FUNC4 (struct sk_buff*,unsigned int,int /*<<< orphan*/ *,int) ; 
 int FUNC5 (struct rxrpc_call*,struct sk_buff*,unsigned int,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct rxrpc_call *call, struct sk_buff *skb,
			       u8 annotation,
			       unsigned int offset, unsigned int len)
{
	struct rxrpc_skb_priv *sp = FUNC3(skb);
	rxrpc_seq_t seq = sp->hdr.seq;
	u16 cksum = sp->hdr.cksum;
	u8 subpacket = annotation & RXRPC_RX_ANNO_SUBPACKET;

	FUNC1("");

	/* For all but the head jumbo subpacket, the security checksum is in a
	 * jumbo header immediately prior to the data.
	 */
	if (subpacket > 0) {
		__be16 tmp;
		if (FUNC4(skb, offset - 2, &tmp, 2) < 0)
			FUNC0();
		cksum = FUNC2(tmp);
		seq += subpacket;
	}

	return call->security->verify_packet(call, skb, offset, len,
					     seq, cksum);
}