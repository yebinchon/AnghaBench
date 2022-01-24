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
struct record {int /*<<< orphan*/  samples; int /*<<< orphan*/  session; } ;
struct mmap {void* data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mmap*) ; 
 scalar_t__ FUNC1 (struct record*) ; 
 int FUNC2 (struct record*,struct mmap*,void*,size_t) ; 
 size_t FUNC3 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,void*,size_t) ; 

__attribute__((used)) static int FUNC4(struct mmap *map, void *to, void *bf, size_t size)
{
	struct record *rec = to;

	if (FUNC1(rec)) {
		size = FUNC3(rec->session, map->data, FUNC0(map), bf, size);
		bf   = map->data;
	}

	rec->samples++;
	return FUNC2(rec, map, bf, size);
}