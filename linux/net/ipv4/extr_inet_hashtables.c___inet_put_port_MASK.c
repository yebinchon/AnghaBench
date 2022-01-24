#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct sock {TYPE_2__* sk_prot; } ;
struct inet_hashinfo {int /*<<< orphan*/  bind_bucket_cachep; struct inet_bind_hashbucket* bhash; int /*<<< orphan*/  bhash_size; } ;
struct inet_bind_hashbucket {int /*<<< orphan*/  lock; } ;
struct inet_bind_bucket {int dummy; } ;
struct TYPE_8__ {struct inet_bind_bucket* icsk_bind_hash; } ;
struct TYPE_7__ {scalar_t__ inet_num; } ;
struct TYPE_5__ {struct inet_hashinfo* hashinfo; } ;
struct TYPE_6__ {TYPE_1__ h; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sock*) ; 
 int FUNC1 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct inet_bind_bucket*) ; 
 TYPE_4__* FUNC3 (struct sock*) ; 
 TYPE_3__* FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct sock *sk)
{
	struct inet_hashinfo *hashinfo = sk->sk_prot->h.hashinfo;
	const int bhash = FUNC1(FUNC5(sk), FUNC4(sk)->inet_num,
			hashinfo->bhash_size);
	struct inet_bind_hashbucket *head = &hashinfo->bhash[bhash];
	struct inet_bind_bucket *tb;

	FUNC6(&head->lock);
	tb = FUNC3(sk)->icsk_bind_hash;
	FUNC0(sk);
	FUNC3(sk)->icsk_bind_hash = NULL;
	FUNC4(sk)->inet_num = 0;
	FUNC2(hashinfo->bind_bucket_cachep, tb);
	FUNC7(&head->lock);
}