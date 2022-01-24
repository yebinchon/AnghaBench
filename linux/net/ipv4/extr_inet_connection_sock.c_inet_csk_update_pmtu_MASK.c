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
struct TYPE_3__ {int /*<<< orphan*/  fl; } ;
struct inet_sock {TYPE_1__ cork; } ;
struct dst_entry {TYPE_2__* ops; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* update_pmtu ) (struct dst_entry*,struct sock*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 struct dst_entry* FUNC0 (struct sock*,int /*<<< orphan*/ ) ; 
 struct dst_entry* FUNC1 (struct sock*,int /*<<< orphan*/ *) ; 
 struct inet_sock* FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct dst_entry*,struct sock*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

struct dst_entry *FUNC4(struct sock *sk, u32 mtu)
{
	struct dst_entry *dst = FUNC0(sk, 0);
	struct inet_sock *inet = FUNC2(sk);

	if (!dst) {
		dst = FUNC1(sk, &inet->cork.fl);
		if (!dst)
			goto out;
	}
	dst->ops->update_pmtu(dst, sk, NULL, mtu);

	dst = FUNC0(sk, 0);
	if (!dst)
		dst = FUNC1(sk, &inet->cork.fl);
out:
	return dst;
}