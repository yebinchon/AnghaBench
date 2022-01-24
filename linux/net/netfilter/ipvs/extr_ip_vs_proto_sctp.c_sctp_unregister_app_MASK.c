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
struct ip_vs_proto_data {int /*<<< orphan*/  appcnt; } ;
struct ip_vs_app {int /*<<< orphan*/  p_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  IPPROTO_SCTP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct ip_vs_proto_data* FUNC1 (struct netns_ipvs*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct netns_ipvs *ipvs, struct ip_vs_app *inc)
{
	struct ip_vs_proto_data *pd = FUNC1(ipvs, IPPROTO_SCTP);

	FUNC0(&pd->appcnt);
	FUNC2(&inc->p_list);
}