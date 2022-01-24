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
struct net {int dummy; } ;
struct ip_set_net {size_t ip_set_max; int /*<<< orphan*/  ip_set_list; } ;
struct ip_set {int /*<<< orphan*/  name; } ;
typedef  size_t ip_set_id_t ;

/* Variables and functions */
 size_t IPSET_INVALID_ID ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct ip_set*) ; 
 struct ip_set_net* FUNC2 (struct net*) ; 
 struct ip_set** FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 

ip_set_id_t
FUNC6(struct net *net, const char *name, struct ip_set **set)
{
	ip_set_id_t i, index = IPSET_INVALID_ID;
	struct ip_set *s;
	struct ip_set_net *inst = FUNC2(net);

	FUNC4();
	for (i = 0; i < inst->ip_set_max; i++) {
		s = FUNC3(inst->ip_set_list)[i];
		if (s && FUNC0(s->name, name)) {
			FUNC1(s);
			index = i;
			*set = s;
			break;
		}
	}
	FUNC5();

	return index;
}