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
struct ip_vs_wrr_mark {int dummy; } ;
struct ip_vs_service {struct ip_vs_wrr_mark* sched_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ip_vs_wrr_mark*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rcu_head ; 

__attribute__((used)) static void FUNC1(struct ip_vs_service *svc)
{
	struct ip_vs_wrr_mark *mark = svc->sched_data;

	/*
	 *    Release the mark variable
	 */
	FUNC0(mark, rcu_head);
}