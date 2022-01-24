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
struct tipc_net {int /*<<< orphan*/ * bearer_list; } ;
struct tipc_bearer {int identity; scalar_t__ disc; int /*<<< orphan*/  media_ptr; TYPE_1__* media; int /*<<< orphan*/  up; int /*<<< orphan*/  name; } ;
struct net {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* disable_media ) (struct tipc_bearer*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct tipc_bearer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rcu ; 
 int /*<<< orphan*/  FUNC4 (struct tipc_bearer*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct net*,int) ; 
 struct tipc_net* FUNC7 (struct net*) ; 
 int /*<<< orphan*/  FUNC8 (struct net*,int) ; 

__attribute__((used)) static void FUNC9(struct net *net, struct tipc_bearer *b)
{
	struct tipc_net *tn = FUNC7(net);
	int bearer_id = b->identity;

	FUNC3("Disabling bearer <%s>\n", b->name);
	FUNC1(0, &b->up);
	FUNC8(net, bearer_id);
	b->media->disable_media(b);
	FUNC0(b->media_ptr, NULL);
	if (b->disc)
		FUNC5(b->disc);
	FUNC0(tn->bearer_list[bearer_id], NULL);
	FUNC2(b, rcu);
	FUNC6(net, bearer_id);
}