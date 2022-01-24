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
struct map {int dummy; } ;
struct dso {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct dso*,char const*,struct map*,int) ; 

int FUNC1(struct dso *dso, const char *filename,
		       struct map *map)
{
	return FUNC0(dso, filename, map, false);
}