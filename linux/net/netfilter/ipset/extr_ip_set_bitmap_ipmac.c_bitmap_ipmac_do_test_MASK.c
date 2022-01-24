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
struct bitmap_ipmac_elem {scalar_t__ filled; int /*<<< orphan*/  ether; } ;
struct bitmap_ipmac_adt_elem {int /*<<< orphan*/  ether; scalar_t__ add_mac; int /*<<< orphan*/  id; } ;
struct bitmap_ipmac {int /*<<< orphan*/  extensions; int /*<<< orphan*/  members; } ;

/* Variables and functions */
 int EAGAIN ; 
 scalar_t__ MAC_FILLED ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct bitmap_ipmac_elem* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int
FUNC3(const struct bitmap_ipmac_adt_elem *e,
		     const struct bitmap_ipmac *map, size_t dsize)
{
	const struct bitmap_ipmac_elem *elem;

	if (!FUNC2(e->id, map->members))
		return 0;
	elem = FUNC1(map->extensions, e->id, dsize);
	if (e->add_mac && elem->filled == MAC_FILLED)
		return FUNC0(e->ether, elem->ether);
	/* Trigger kernel to fill out the ethernet address */
	return -EAGAIN;
}