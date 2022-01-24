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
struct array_cache {scalar_t__ avail; scalar_t__ entry; scalar_t__ limit; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__,int) ; 
 int FUNC1 (scalar_t__,unsigned int,scalar_t__) ; 

__attribute__((used)) static int FUNC2(struct array_cache *to,
		struct array_cache *from, unsigned int max)
{
	/* Figure out how many entries to transfer */
	int nr = FUNC1(from->avail, max, to->limit - to->avail);

	if (!nr)
		return 0;

	FUNC0(to->entry + to->avail, from->entry + from->avail -nr,
			sizeof(void *) *nr);

	from->avail -= nr;
	to->avail += nr;
	return nr;
}