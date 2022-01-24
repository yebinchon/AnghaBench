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
struct ip_set {int /*<<< orphan*/  name; } ;
typedef  int /*<<< orphan*/  ip_set_id_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  IPSET_MAXNAMELEN ; 
 struct ip_set* FUNC1 (struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ip_set_ref_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC5(struct net *net, ip_set_id_t index, char *name)
{
	struct ip_set *set = FUNC1(net, index);

	FUNC0(!set);

	FUNC2(&ip_set_ref_lock);
	FUNC4(name, set->name, IPSET_MAXNAMELEN);
	FUNC3(&ip_set_ref_lock);
}