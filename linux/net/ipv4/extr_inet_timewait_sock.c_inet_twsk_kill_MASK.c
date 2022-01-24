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
struct inet_timewait_sock {TYPE_1__* tw_dr; int /*<<< orphan*/  tw_num; int /*<<< orphan*/  tw_hash; } ;
struct inet_hashinfo {int /*<<< orphan*/  bhash_size; struct inet_bind_hashbucket* bhash; } ;
struct inet_bind_hashbucket {int /*<<< orphan*/  lock; } ;
typedef  int /*<<< orphan*/  spinlock_t ;
struct TYPE_2__ {int /*<<< orphan*/  tw_count; struct inet_hashinfo* hashinfo; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 size_t FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (struct inet_hashinfo*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct inet_timewait_sock*,struct inet_hashinfo*) ; 
 int /*<<< orphan*/  FUNC4 (struct inet_timewait_sock*) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct inet_timewait_sock*) ; 

__attribute__((used)) static void FUNC9(struct inet_timewait_sock *tw)
{
	struct inet_hashinfo *hashinfo = tw->tw_dr->hashinfo;
	spinlock_t *lock = FUNC2(hashinfo, tw->tw_hash);
	struct inet_bind_hashbucket *bhead;

	FUNC6(lock);
	FUNC5((struct sock *)tw);
	FUNC7(lock);

	/* Disassociate with bind bucket. */
	bhead = &hashinfo->bhash[FUNC1(FUNC8(tw), tw->tw_num,
			hashinfo->bhash_size)];

	FUNC6(&bhead->lock);
	FUNC3(tw, hashinfo);
	FUNC7(&bhead->lock);

	FUNC0(&tw->tw_dr->tw_count);
	FUNC4(tw);
}