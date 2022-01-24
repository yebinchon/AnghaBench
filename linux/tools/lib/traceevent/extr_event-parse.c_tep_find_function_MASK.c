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
struct tep_handle {int dummy; } ;
struct func_map {char const* func; } ;

/* Variables and functions */
 struct func_map* FUNC0 (struct tep_handle*,unsigned long long) ; 

const char *FUNC1(struct tep_handle *tep, unsigned long long addr)
{
	struct func_map *map;

	map = FUNC0(tep, addr);
	if (!map)
		return NULL;

	return map->func;
}