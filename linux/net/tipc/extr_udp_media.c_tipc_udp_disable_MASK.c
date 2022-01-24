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
struct udp_bearer {int /*<<< orphan*/  work; int /*<<< orphan*/  bearer; TYPE_1__* ubsock; } ;
struct tipc_bearer {int /*<<< orphan*/  media_ptr; } ;
struct TYPE_2__ {int /*<<< orphan*/  sk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SOCK_DEAD ; 
 int /*<<< orphan*/  cleanup_bearer ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 struct udp_bearer* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct tipc_bearer *b)
{
	struct udp_bearer *ub;

	ub = FUNC3(b->media_ptr);
	if (!ub) {
		FUNC2("UDP bearer instance not found\n");
		return;
	}
	FUNC5(ub->ubsock->sk, SOCK_DEAD);
	FUNC1(ub->bearer, NULL);

	/* sock_release need to be done outside of rtnl lock */
	FUNC0(&ub->work, cleanup_bearer);
	FUNC4(&ub->work);
}