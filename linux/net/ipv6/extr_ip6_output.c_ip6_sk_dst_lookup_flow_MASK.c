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
struct in6_addr {int dummy; } ;
struct flowi6 {int dummy; } ;
struct dst_entry {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dst_cookie; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dst_entry*) ; 
 int /*<<< orphan*/  FUNC1 (struct dst_entry*) ; 
 TYPE_1__* FUNC2 (struct sock*) ; 
 struct dst_entry* FUNC3 (struct sock*,struct flowi6*,struct in6_addr const*) ; 
 struct dst_entry* FUNC4 (struct sock*,struct dst_entry*,struct flowi6*) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*,int /*<<< orphan*/ ,struct flowi6*) ; 
 struct dst_entry* FUNC6 (struct sock*,int /*<<< orphan*/ ) ; 

struct dst_entry *FUNC7(struct sock *sk, struct flowi6 *fl6,
					 const struct in6_addr *final_dst,
					 bool connected)
{
	struct dst_entry *dst = FUNC6(sk, FUNC2(sk)->dst_cookie);

	dst = FUNC4(sk, dst, fl6);
	if (dst)
		return dst;

	dst = FUNC3(sk, fl6, final_dst);
	if (connected && !FUNC0(dst))
		FUNC5(sk, FUNC1(dst), fl6);

	return dst;
}