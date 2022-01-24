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
struct sock {int dummy; } ;
struct sctp_bind_hashbucket {int /*<<< orphan*/  lock; } ;
struct sctp_bind_bucket {int dummy; } ;
struct TYPE_4__ {scalar_t__ inet_num; } ;
struct TYPE_3__ {struct sctp_bind_bucket* bind_hash; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sock*) ; 
 TYPE_2__* FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct sctp_bind_bucket*) ; 
 size_t FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 struct sctp_bind_hashbucket* sctp_port_hashtable ; 
 TYPE_1__* FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC8(struct sock *sk)
{
	struct sctp_bind_hashbucket *head =
		&sctp_port_hashtable[FUNC3(FUNC5(sk),
						  FUNC1(sk)->inet_num)];
	struct sctp_bind_bucket *pp;

	FUNC6(&head->lock);
	pp = FUNC4(sk)->bind_hash;
	FUNC0(sk);
	FUNC4(sk)->bind_hash = NULL;
	FUNC1(sk)->inet_num = 0;
	FUNC2(pp);
	FUNC7(&head->lock);
}