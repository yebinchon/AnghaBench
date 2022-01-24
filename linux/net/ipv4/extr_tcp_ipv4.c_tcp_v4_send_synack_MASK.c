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
struct tcp_fastopen_cookie {int dummy; } ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct request_sock {int dummy; } ;
struct inet_request_sock {int /*<<< orphan*/  ireq_opt; int /*<<< orphan*/  ir_rmt_addr; int /*<<< orphan*/  ir_loc_addr; } ;
struct flowi4 {int dummy; } ;
struct flowi {int dummy; } ;
struct dst_entry {int dummy; } ;
typedef  enum tcp_synack_type { ____Placeholder_tcp_synack_type } tcp_synack_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct dst_entry* FUNC1 (struct sock const*,struct flowi4*,struct request_sock*) ; 
 struct inet_request_sock* FUNC2 (struct request_sock*) ; 
 int FUNC3 (struct sk_buff*,struct sock const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 struct sk_buff* FUNC8 (struct sock const*,struct dst_entry*,struct request_sock*,struct tcp_fastopen_cookie*,int) ; 

__attribute__((used)) static int FUNC9(const struct sock *sk, struct dst_entry *dst,
			      struct flowi *fl,
			      struct request_sock *req,
			      struct tcp_fastopen_cookie *foc,
			      enum tcp_synack_type synack_type)
{
	const struct inet_request_sock *ireq = FUNC2(req);
	struct flowi4 fl4;
	int err = -1;
	struct sk_buff *skb;

	/* First, grab a route. */
	if (!dst && (dst = FUNC1(sk, &fl4, req)) == NULL)
		return -1;

	skb = FUNC8(sk, dst, req, foc, synack_type);

	if (skb) {
		FUNC0(skb, ireq->ir_loc_addr, ireq->ir_rmt_addr);

		FUNC6();
		err = FUNC3(skb, sk, ireq->ir_loc_addr,
					    ireq->ir_rmt_addr,
					    FUNC5(ireq->ireq_opt));
		FUNC7();
		err = FUNC4(err);
	}

	return err;
}