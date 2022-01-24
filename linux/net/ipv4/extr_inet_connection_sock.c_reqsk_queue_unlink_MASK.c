#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct request_sock {int /*<<< orphan*/  rsk_timer; int /*<<< orphan*/  rsk_hash; } ;
struct inet_hashinfo {int dummy; } ;
typedef  int /*<<< orphan*/  spinlock_t ;
struct TYPE_8__ {TYPE_2__* sk_prot; } ;
struct TYPE_6__ {struct inet_hashinfo* hashinfo; } ;
struct TYPE_7__ {TYPE_1__ h; } ;

/* Variables and functions */
 int FUNC0 (TYPE_3__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (struct inet_hashinfo*,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC3 (struct request_sock*) ; 
 int /*<<< orphan*/  FUNC4 (struct request_sock*) ; 
 scalar_t__ FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC9(struct request_sock *req)
{
	struct inet_hashinfo *hashinfo = FUNC3(req)->sk_prot->h.hashinfo;
	bool found = false;

	if (FUNC5(FUNC3(req))) {
		spinlock_t *lock = FUNC2(hashinfo, req->rsk_hash);

		FUNC6(lock);
		found = FUNC0(FUNC3(req));
		FUNC7(lock);
	}
	if (FUNC8(&req->rsk_timer) && FUNC1(&req->rsk_timer))
		FUNC4(req);
	return found;
}