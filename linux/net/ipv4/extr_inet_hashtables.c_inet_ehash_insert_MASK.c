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
struct sock {int /*<<< orphan*/  sk_hash; TYPE_2__* sk_prot; } ;
struct inet_hashinfo {int dummy; } ;
struct hlist_nulls_head {int dummy; } ;
struct inet_ehash_bucket {struct hlist_nulls_head chain; } ;
typedef  int /*<<< orphan*/  spinlock_t ;
struct TYPE_3__ {struct inet_hashinfo* hashinfo; } ;
struct TYPE_4__ {TYPE_1__ h; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*,struct hlist_nulls_head*) ; 
 struct inet_ehash_bucket* FUNC2 (struct inet_hashinfo*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (struct inet_hashinfo*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 
 int FUNC5 (struct sock*) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

bool FUNC9(struct sock *sk, struct sock *osk)
{
	struct inet_hashinfo *hashinfo = sk->sk_prot->h.hashinfo;
	struct hlist_nulls_head *list;
	struct inet_ehash_bucket *head;
	spinlock_t *lock;
	bool ret = true;

	FUNC0(!FUNC6(sk));

	sk->sk_hash = FUNC4(sk);
	head = FUNC2(hashinfo, sk->sk_hash);
	list = &head->chain;
	lock = FUNC3(hashinfo, sk->sk_hash);

	FUNC7(lock);
	if (osk) {
		FUNC0(sk->sk_hash != osk->sk_hash);
		ret = FUNC5(osk);
	}
	if (ret)
		FUNC1(sk, list);
	FUNC8(lock);
	return ret;
}