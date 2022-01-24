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
struct request_sock {int dummy; } ;
struct inet_request_sock {int /*<<< orphan*/  ireq_opt; int /*<<< orphan*/  ir_rmt_addr; int /*<<< orphan*/  ir_loc_addr; } ;
struct flowi4 {int dummy; } ;
struct dst_entry {int dummy; } ;
struct dccp_hdr {int /*<<< orphan*/  dccph_checksum; } ;

/* Variables and functions */
 struct dccp_hdr* FUNC0 (struct sk_buff*) ; 
 struct sk_buff* FUNC1 (struct sock const*,struct dst_entry*,struct request_sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct dst_entry*) ; 
 struct dst_entry* FUNC4 (struct sock const*,struct flowi4*,struct request_sock*) ; 
 struct inet_request_sock* FUNC5 (struct request_sock*) ; 
 int FUNC6 (struct sk_buff*,struct sock const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 

__attribute__((used)) static int FUNC11(const struct sock *sk, struct request_sock *req)
{
	int err = -1;
	struct sk_buff *skb;
	struct dst_entry *dst;
	struct flowi4 fl4;

	dst = FUNC4(sk, &fl4, req);
	if (dst == NULL)
		goto out;

	skb = FUNC1(sk, dst, req);
	if (skb != NULL) {
		const struct inet_request_sock *ireq = FUNC5(req);
		struct dccp_hdr *dh = FUNC0(skb);

		dh->dccph_checksum = FUNC2(skb, ireq->ir_loc_addr,
							      ireq->ir_rmt_addr);
		FUNC9();
		err = FUNC6(skb, sk, ireq->ir_loc_addr,
					    ireq->ir_rmt_addr,
					    FUNC8(ireq->ireq_opt));
		FUNC10();
		err = FUNC7(err);
	}

out:
	FUNC3(dst);
	return err;
}