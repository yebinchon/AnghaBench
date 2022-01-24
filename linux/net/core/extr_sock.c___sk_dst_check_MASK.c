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
typedef  int /*<<< orphan*/  u32 ;
struct sock {int /*<<< orphan*/  sk_dst_cache; scalar_t__ sk_dst_pending_confirm; } ;
struct dst_entry {TYPE_1__* ops; scalar_t__ obsolete; } ;
struct TYPE_2__ {int /*<<< orphan*/ * (* check ) (struct dst_entry*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct dst_entry* FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct dst_entry*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 int /*<<< orphan*/ * FUNC4 (struct dst_entry*,int /*<<< orphan*/ ) ; 

struct dst_entry *FUNC5(struct sock *sk, u32 cookie)
{
	struct dst_entry *dst = FUNC1(sk);

	if (dst && dst->obsolete && dst->ops->check(dst, cookie) == NULL) {
		FUNC3(sk);
		sk->sk_dst_pending_confirm = 0;
		FUNC0(sk->sk_dst_cache, NULL);
		FUNC2(dst);
		return NULL;
	}

	return dst;
}