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
typedef  int /*<<< orphan*/  u64 ;
struct map {scalar_t__ dso; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 char* SRCLINE_UNKNOWN ; 
 int FUNC0 (int /*<<< orphan*/ *,char*,char const*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (struct map*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC3(struct map *map, u64 addr, const char *prefix,
			 FILE *fp)
{
	int ret = 0;

	if (map && map->dso) {
		char *srcline = FUNC2(map, addr, NULL);
		if (srcline != SRCLINE_UNKNOWN)
			ret = FUNC0(fp, "%s%s", prefix, srcline);
		FUNC1(srcline);
	}
	return ret;
}