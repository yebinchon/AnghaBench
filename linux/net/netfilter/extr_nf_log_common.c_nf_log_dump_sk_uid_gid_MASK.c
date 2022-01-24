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
struct sock {int /*<<< orphan*/  sk_callback_lock; TYPE_1__* sk_socket; } ;
struct nf_log_buf {int dummy; } ;
struct net {int dummy; } ;
struct cred {int /*<<< orphan*/  fsgid; int /*<<< orphan*/  fsuid; } ;
struct TYPE_4__ {struct cred* f_cred; } ;
struct TYPE_3__ {TYPE_2__* file; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  init_user_ns ; 
 int /*<<< orphan*/  FUNC2 (struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct nf_log_buf*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*) ; 
 int /*<<< orphan*/  FUNC7 (struct sock*) ; 

void FUNC8(struct net *net, struct nf_log_buf *m,
			    struct sock *sk)
{
	if (!sk || !FUNC6(sk) || !FUNC2(net, FUNC7(sk)))
		return;

	FUNC4(&sk->sk_callback_lock);
	if (sk->sk_socket && sk->sk_socket->file) {
		const struct cred *cred = sk->sk_socket->file->f_cred;
		FUNC3(m, "UID=%u GID=%u ",
			FUNC1(&init_user_ns, cred->fsuid),
			FUNC0(&init_user_ns, cred->fsgid));
	}
	FUNC5(&sk->sk_callback_lock);
}