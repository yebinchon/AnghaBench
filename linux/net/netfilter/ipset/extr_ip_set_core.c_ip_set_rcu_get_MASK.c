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
struct ip_set_net {int /*<<< orphan*/  ip_set_list; } ;
struct ip_set {int dummy; } ;
typedef  size_t ip_set_id_t ;

/* Variables and functions */
 struct ip_set_net* FUNC0 (struct net*) ; 
 struct ip_set** FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static inline struct ip_set *
FUNC4(struct net *net, ip_set_id_t index)
{
	struct ip_set *set;
	struct ip_set_net *inst = FUNC0(net);

	FUNC2();
	/* ip_set_list itself needs to be protected */
	set = FUNC1(inst->ip_set_list)[index];
	FUNC3();

	return set;
}