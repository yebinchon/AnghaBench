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
struct netns_ipvs {int dummy; } ;
struct ip_vs_protocol {int /*<<< orphan*/  name; int /*<<< orphan*/  (* unregister_app ) (struct netns_ipvs*,struct ip_vs_app*) ;} ;
struct ip_vs_app {int /*<<< orphan*/  rcu_head; int /*<<< orphan*/  a_list; int /*<<< orphan*/  port; int /*<<< orphan*/  name; int /*<<< orphan*/  protocol; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ip_vs_app_inc_rcu_free ; 
 struct ip_vs_protocol* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct netns_ipvs*,struct ip_vs_app*) ; 

__attribute__((used)) static void
FUNC6(struct netns_ipvs *ipvs, struct ip_vs_app *inc)
{
	struct ip_vs_protocol *pp;

	if (!(pp = FUNC2(inc->protocol)))
		return;

	if (pp->unregister_app)
		pp->unregister_app(ipvs, inc);

	FUNC0(9, "%s App %s:%u unregistered\n",
		  pp->name, inc->name, FUNC4(inc->port));

	FUNC3(&inc->a_list);

	FUNC1(&inc->rcu_head, ip_vs_app_inc_rcu_free);
}