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
struct sock {int /*<<< orphan*/  sk_callback_lock; TYPE_2__* sk_socket; } ;
struct sk_buff {int dummy; } ;
struct cred {int /*<<< orphan*/  fsgid; int /*<<< orphan*/  fsuid; } ;
struct TYPE_4__ {TYPE_1__* file; } ;
struct TYPE_3__ {struct cred* f_cred; } ;

/* Variables and functions */
 int /*<<< orphan*/  NFQA_GID ; 
 int /*<<< orphan*/  NFQA_UID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  init_user_ns ; 
 scalar_t__ FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*) ; 

__attribute__((used)) static int FUNC7(struct sk_buff *skb, struct sock *sk)
{
	const struct cred *cred;

	if (!FUNC6(sk))
		return 0;

	FUNC4(&sk->sk_callback_lock);
	if (sk->sk_socket && sk->sk_socket->file) {
		cred = sk->sk_socket->file->f_cred;
		if (FUNC3(skb, NFQA_UID,
		    FUNC2(FUNC1(&init_user_ns, cred->fsuid))))
			goto nla_put_failure;
		if (FUNC3(skb, NFQA_GID,
		    FUNC2(FUNC0(&init_user_ns, cred->fsgid))))
			goto nla_put_failure;
	}
	FUNC5(&sk->sk_callback_lock);
	return 0;

nla_put_failure:
	FUNC5(&sk->sk_callback_lock);
	return -1;
}