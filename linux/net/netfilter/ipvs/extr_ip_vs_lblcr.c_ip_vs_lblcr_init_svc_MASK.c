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
struct ip_vs_service {struct ip_vs_lblcr_table* sched_data; } ;
struct ip_vs_lblcr_table {int max_size; int counter; int dead; int /*<<< orphan*/  periodic_timer; int /*<<< orphan*/  entries; struct ip_vs_service* svc; scalar_t__ rover; int /*<<< orphan*/ * bucket; } ;

/* Variables and functions */
 scalar_t__ CHECK_EXPIRE_INTERVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int) ; 
 int IP_VS_LBLCR_TAB_SIZE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ip_vs_lblcr_check_expire ; 
 scalar_t__ jiffies ; 
 struct ip_vs_lblcr_table* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct ip_vs_service *svc)
{
	int i;
	struct ip_vs_lblcr_table *tbl;

	/*
	 *    Allocate the ip_vs_lblcr_table for this service
	 */
	tbl = FUNC3(sizeof(*tbl), GFP_KERNEL);
	if (tbl == NULL)
		return -ENOMEM;

	svc->sched_data = tbl;
	FUNC1(6, "LBLCR hash table (memory=%zdbytes) allocated for "
		  "current service\n", sizeof(*tbl));

	/*
	 *    Initialize the hash buckets
	 */
	for (i = 0; i < IP_VS_LBLCR_TAB_SIZE; i++) {
		FUNC0(&tbl->bucket[i]);
	}
	tbl->max_size = IP_VS_LBLCR_TAB_SIZE*16;
	tbl->rover = 0;
	tbl->counter = 1;
	tbl->dead = false;
	tbl->svc = svc;
	FUNC2(&tbl->entries, 0);

	/*
	 *    Hook periodic timer for garbage collection
	 */
	FUNC5(&tbl->periodic_timer, ip_vs_lblcr_check_expire, 0);
	FUNC4(&tbl->periodic_timer, jiffies + CHECK_EXPIRE_INTERVAL);

	return 0;
}