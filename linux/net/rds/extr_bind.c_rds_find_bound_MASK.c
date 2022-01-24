#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct rds_sock {int dummy; } ;
struct in6_addr {int dummy; } ;
typedef  int /*<<< orphan*/  __u32 ;
typedef  int /*<<< orphan*/  __be16 ;
struct TYPE_3__ {int /*<<< orphan*/  sk_refcnt; } ;

/* Variables and functions */
 int RDS_BOUND_KEY_LEN ; 
 int /*<<< orphan*/  SOCK_DEAD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct in6_addr const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bind_hash_table ; 
 int /*<<< orphan*/  ht_parms ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 TYPE_1__* FUNC4 (struct rds_sock*) ; 
 int /*<<< orphan*/  FUNC5 (char*,struct rds_sock*,struct in6_addr const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct rds_sock* FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (TYPE_1__*,int /*<<< orphan*/ ) ; 

struct rds_sock *FUNC9(const struct in6_addr *addr, __be16 port,
				__u32 scope_id)
{
	u8 key[RDS_BOUND_KEY_LEN];
	struct rds_sock *rs;

	FUNC0(key, addr, port, scope_id);
	FUNC2();
	rs = FUNC7(&bind_hash_table, key, ht_parms);
	if (rs && (FUNC8(FUNC4(rs), SOCK_DEAD) ||
		   !FUNC6(&FUNC4(rs)->sk_refcnt)))
		rs = NULL;

	FUNC3();

	FUNC5("returning rs %p for %pI6c:%u\n", rs, addr,
		 FUNC1(port));

	return rs;
}