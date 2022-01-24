#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct sock {TYPE_3__* sk_socket; } ;
struct sk_buff {int dummy; } ;
typedef  int /*<<< orphan*/  kgid_t ;
struct TYPE_6__ {TYPE_2__* file; } ;
struct TYPE_5__ {TYPE_1__* f_cred; } ;
struct TYPE_4__ {int /*<<< orphan*/  fsgid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  init_user_ns ; 
 struct sock* FUNC1 (struct sk_buff const*) ; 

__attribute__((used)) static u32 FUNC2(const struct sk_buff *skb)
{
	struct sock *sk = FUNC1(skb);

	if (sk && sk->sk_socket && sk->sk_socket->file) {
		kgid_t skgid = sk->sk_socket->file->f_cred->fsgid;

		return FUNC0(&init_user_ns, skgid);
	}
	return 0;
}