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
typedef  int /*<<< orphan*/  u8 ;
struct sock {int /*<<< orphan*/  sk_uid; } ;
struct request_sock {int dummy; } ;
struct ipv6_pinfo {int /*<<< orphan*/  opt; } ;
struct inet_request_sock {int /*<<< orphan*/  ir_num; int /*<<< orphan*/  ir_rmt_port; int /*<<< orphan*/  ir_mark; int /*<<< orphan*/  ir_iif; int /*<<< orphan*/  ir_v6_loc_addr; int /*<<< orphan*/  ir_v6_rmt_addr; } ;
struct in6_addr {int dummy; } ;
struct flowi6 {int /*<<< orphan*/  flowi6_uid; int /*<<< orphan*/  fl6_sport; int /*<<< orphan*/  fl6_dport; int /*<<< orphan*/  flowi6_mark; int /*<<< orphan*/  flowi6_oif; int /*<<< orphan*/  saddr; int /*<<< orphan*/  daddr; int /*<<< orphan*/  flowi6_proto; } ;
struct dst_entry {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct dst_entry*) ; 
 struct in6_addr* FUNC1 (struct flowi6*,int /*<<< orphan*/ ,struct in6_addr*) ; 
 int /*<<< orphan*/  FUNC2 (struct flowi6*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct ipv6_pinfo* FUNC4 (struct sock const*) ; 
 struct inet_request_sock* FUNC5 (struct request_sock const*) ; 
 struct dst_entry* FUNC6 (struct sock const*,struct flowi6*,struct in6_addr*) ; 
 int /*<<< orphan*/  FUNC7 (struct flowi6*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (struct request_sock const*,int /*<<< orphan*/ ) ; 

struct dst_entry *FUNC12(const struct sock *sk,
				      struct flowi6 *fl6,
				      const struct request_sock *req,
				      u8 proto)
{
	struct inet_request_sock *ireq = FUNC5(req);
	const struct ipv6_pinfo *np = FUNC4(sk);
	struct in6_addr *final_p, final;
	struct dst_entry *dst;

	FUNC7(fl6, 0, sizeof(*fl6));
	fl6->flowi6_proto = proto;
	fl6->daddr = ireq->ir_v6_rmt_addr;
	FUNC9();
	final_p = FUNC1(fl6, FUNC8(np->opt), &final);
	FUNC10();
	fl6->saddr = ireq->ir_v6_loc_addr;
	fl6->flowi6_oif = ireq->ir_iif;
	fl6->flowi6_mark = ireq->ir_mark;
	fl6->fl6_dport = ireq->ir_rmt_port;
	fl6->fl6_sport = FUNC3(ireq->ir_num);
	fl6->flowi6_uid = sk->sk_uid;
	FUNC11(req, FUNC2(fl6));

	dst = FUNC6(sk, fl6, final_p);
	if (FUNC0(dst))
		return NULL;

	return dst;
}