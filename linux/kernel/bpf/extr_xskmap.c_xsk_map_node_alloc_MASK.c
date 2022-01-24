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
struct xsk_map_node {struct xdp_sock** map_entry; struct xsk_map* map; } ;
struct xsk_map {int dummy; } ;
struct xdp_sock {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct xsk_map_node* FUNC0 (int) ; 
 int GFP_ATOMIC ; 
 int __GFP_NOWARN ; 
 int /*<<< orphan*/  FUNC1 (struct xsk_map_node*) ; 
 struct xsk_map_node* FUNC2 (int,int) ; 
 int FUNC3 (struct xsk_map*) ; 

__attribute__((used)) static struct xsk_map_node *FUNC4(struct xsk_map *map,
					       struct xdp_sock **map_entry)
{
	struct xsk_map_node *node;
	int err;

	node = FUNC2(sizeof(*node), GFP_ATOMIC | __GFP_NOWARN);
	if (!node)
		return FUNC0(-ENOMEM);

	err = FUNC3(map);
	if (err) {
		FUNC1(node);
		return FUNC0(err);
	}

	node->map = map;
	node->map_entry = map_entry;
	return node;
}