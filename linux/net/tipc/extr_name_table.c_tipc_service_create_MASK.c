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
typedef  int /*<<< orphan*/  u32 ;
struct tipc_service {int /*<<< orphan*/  service_list; int /*<<< orphan*/  subscriptions; int /*<<< orphan*/  ranges; int /*<<< orphan*/  type; int /*<<< orphan*/  lock; } ;
struct hlist_head {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  RB_ROOT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct hlist_head*) ; 
 struct tipc_service* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct tipc_service *FUNC6(u32 type, struct hlist_head *hd)
{
	struct tipc_service *service = FUNC3(sizeof(*service), GFP_ATOMIC);

	if (!service) {
		FUNC4("Service creation failed, no memory\n");
		return NULL;
	}

	FUNC5(&service->lock);
	service->type = type;
	service->ranges = RB_ROOT;
	FUNC0(&service->service_list);
	FUNC1(&service->subscriptions);
	FUNC2(&service->service_list, hd);
	return service;
}