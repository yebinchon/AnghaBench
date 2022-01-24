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
struct map {scalar_t__ dso; } ;

/* Variables and functions */
 char* FUNC0 (struct map*) ; 
 int FUNC1 (char*,size_t,char*,unsigned int,char*) ; 

__attribute__((used)) static int FUNC2(struct map *map, char *bf,
					  size_t bf_size, unsigned int width)
{
	if (map && map->dso)
		return FUNC1(bf, bf_size, "%*d", width,
				       FUNC0(map));

	return FUNC1(bf, bf_size, "%*s", width, "unknown");
}