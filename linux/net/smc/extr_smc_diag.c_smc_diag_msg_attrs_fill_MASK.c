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
struct user_namespace {int dummy; } ;
struct sock {int /*<<< orphan*/  sk_shutdown; } ;
struct smc_diag_msg {int /*<<< orphan*/  diag_inode; int /*<<< orphan*/  diag_uid; } ;
struct sk_buff {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SMC_DIAG_SHUTDOWN ; 
 int /*<<< orphan*/  FUNC0 (struct user_namespace*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 

__attribute__((used)) static int FUNC4(struct sock *sk, struct sk_buff *skb,
				   struct smc_diag_msg *r,
				   struct user_namespace *user_ns)
{
	if (FUNC1(skb, SMC_DIAG_SHUTDOWN, sk->sk_shutdown))
		return 1;

	r->diag_uid = FUNC0(user_ns, FUNC3(sk));
	r->diag_inode = FUNC2(sk);
	return 0;
}