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
struct trace_eval_map {int /*<<< orphan*/  eval_value; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,int) ; 
 int FUNC1 (char*,int,char*,int /*<<< orphan*/ ) ; 
 int FUNC2 (char*) ; 

__attribute__((used)) static char *FUNC3(char *ptr, struct trace_eval_map *map, int len)
{
	int rlen;
	int elen;

	/* Find the length of the eval value as a string */
	elen = FUNC1(ptr, 0, "%ld", map->eval_value);
	/* Make sure there's enough room to replace the string with the value */
	if (len < elen)
		return NULL;

	FUNC1(ptr, elen + 1, "%ld", map->eval_value);

	/* Get the rest of the string of ptr */
	rlen = FUNC2(ptr + len);
	FUNC0(ptr + elen, ptr + len, rlen);
	/* Make sure we end the new string */
	ptr[elen + rlen] = 0;

	return ptr + elen;
}