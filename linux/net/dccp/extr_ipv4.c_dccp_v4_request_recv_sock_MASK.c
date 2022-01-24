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
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct request_sock {int dummy; } ;
struct inet_sock {int /*<<< orphan*/ * inet_opt; int /*<<< orphan*/  inet_id; int /*<<< orphan*/  mc_ttl; int /*<<< orphan*/  mc_index; int /*<<< orphan*/  inet_saddr; } ;
struct inet_request_sock {int /*<<< orphan*/ * ireq_opt; int /*<<< orphan*/  ir_loc_addr; int /*<<< orphan*/  ir_rmt_addr; } ;
struct dst_entry {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  ttl; } ;

/* Variables and functions */
 int /*<<< orphan*/  LINUX_MIB_LISTENDROPS ; 
 int /*<<< orphan*/  LINUX_MIB_LISTENOVERFLOWS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct sock const*,struct sock*) ; 
 struct sock* FUNC3 (struct sock const*,struct request_sock*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct dst_entry*) ; 
 int /*<<< orphan*/  FUNC7 (struct dst_entry*) ; 
 int /*<<< orphan*/  FUNC8 (struct sock*) ; 
 struct dst_entry* FUNC9 (struct sock const*,struct sock*,struct request_sock*) ; 
 int FUNC10 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*) ; 
 struct inet_request_sock* FUNC12 (struct request_sock*) ; 
 struct inet_sock* FUNC13 (struct sock*) ; 
 TYPE_1__* FUNC14 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (struct request_sock*) ; 
 scalar_t__ FUNC18 (struct sock const*) ; 
 int /*<<< orphan*/  FUNC19 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (struct sock*,struct dst_entry*) ; 
 int /*<<< orphan*/  FUNC22 (struct sock const*) ; 

struct sock *FUNC23(const struct sock *sk,
				       struct sk_buff *skb,
				       struct request_sock *req,
				       struct dst_entry *dst,
				       struct request_sock *req_unhash,
				       bool *own_req)
{
	struct inet_request_sock *ireq;
	struct inet_sock *newinet;
	struct sock *newsk;

	if (FUNC18(sk))
		goto exit_overflow;

	newsk = FUNC3(sk, req, skb);
	if (newsk == NULL)
		goto exit_nonewsk;

	newinet		   = FUNC13(newsk);
	ireq		   = FUNC12(req);
	FUNC19(newsk, ireq->ir_rmt_addr);
	FUNC20(newsk, ireq->ir_loc_addr);
	newinet->inet_saddr	= ireq->ir_loc_addr;
	FUNC0(newinet->inet_opt, FUNC16(ireq->ireq_opt));
	newinet->mc_index  = FUNC11(skb);
	newinet->mc_ttl	   = FUNC14(skb)->ttl;
	newinet->inet_id   = FUNC15();

	if (dst == NULL && (dst = FUNC9(sk, newsk, req)) == NULL)
		goto put_and_exit;

	FUNC21(newsk, dst);

	FUNC5(newsk, FUNC6(dst));

	if (FUNC2(sk, newsk) < 0)
		goto put_and_exit;
	*own_req = FUNC10(newsk, FUNC17(req_unhash));
	if (*own_req)
		ireq->ireq_opt = NULL;
	else
		newinet->inet_opt = NULL;
	return newsk;

exit_overflow:
	FUNC1(FUNC22(sk), LINUX_MIB_LISTENOVERFLOWS);
exit_nonewsk:
	FUNC7(dst);
exit:
	FUNC1(FUNC22(sk), LINUX_MIB_LISTENDROPS);
	return NULL;
put_and_exit:
	newinet->inet_opt = NULL;
	FUNC8(newsk);
	FUNC4(newsk);
	goto exit;
}