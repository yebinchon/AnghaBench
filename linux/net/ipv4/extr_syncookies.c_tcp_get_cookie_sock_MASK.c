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
typedef  int /*<<< orphan*/  u32 ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct request_sock {int /*<<< orphan*/  rsk_refcnt; } ;
struct inet_connection_sock {TYPE_1__* icsk_af_ops; } ;
struct dst_entry {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  tsoffset; } ;
struct TYPE_3__ {struct sock* (* syn_recv_sock ) (struct sock*,struct sk_buff*,struct request_sock*,struct dst_entry*,int /*<<< orphan*/ *,int*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct request_sock*) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 struct inet_connection_sock* FUNC2 (struct sock*) ; 
 scalar_t__ FUNC3 (struct sock*,struct request_sock*,struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*,struct sk_buff*) ; 
 struct sock* FUNC7 (struct sock*,struct sk_buff*,struct request_sock*,struct dst_entry*,int /*<<< orphan*/ *,int*) ; 
 TYPE_2__* FUNC8 (struct sock*) ; 

struct sock *FUNC9(struct sock *sk, struct sk_buff *skb,
				 struct request_sock *req,
				 struct dst_entry *dst, u32 tsoff)
{
	struct inet_connection_sock *icsk = FUNC2(sk);
	struct sock *child;
	bool own_req;

	child = icsk->icsk_af_ops->syn_recv_sock(sk, skb, req, dst,
						 NULL, &own_req);
	if (child) {
		FUNC4(&req->rsk_refcnt, 1);
		FUNC8(child)->tsoffset = tsoff;
		FUNC6(child, skb);
		if (FUNC3(sk, req, child))
			return child;

		FUNC1(child);
		FUNC5(child);
	}
	FUNC0(req);

	return NULL;
}