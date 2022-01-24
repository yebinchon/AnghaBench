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
struct net {int dummy; } ;
struct list_set {int /*<<< orphan*/  members; struct ip_set* set; struct net* net; int /*<<< orphan*/  size; } ;
struct ip_set {struct list_set* data; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct list_set* FUNC1 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC2(struct net *net, struct ip_set *set, u32 size)
{
	struct list_set *map;

	map = FUNC1(sizeof(*map), GFP_KERNEL);
	if (!map)
		return false;

	map->size = size;
	map->net = net;
	map->set = set;
	FUNC0(&map->members);
	set->data = map;

	return true;
}