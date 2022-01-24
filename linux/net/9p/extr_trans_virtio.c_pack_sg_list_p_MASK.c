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
struct scatterlist {int dummy; } ;
struct page {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (struct scatterlist*) ; 
 int /*<<< orphan*/  FUNC2 (struct scatterlist*,struct page*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct scatterlist*) ; 

__attribute__((used)) static int
FUNC4(struct scatterlist *sg, int start, int limit,
	       struct page **pdata, int nr_pages, size_t offs, int count)
{
	int i = 0, s;
	int data_off = offs;
	int index = start;

	FUNC0(nr_pages > (limit - start));
	/*
	 * if the first page doesn't start at
	 * page boundary find the offset
	 */
	while (nr_pages) {
		s = PAGE_SIZE - data_off;
		if (s > count)
			s = count;
		FUNC0(index >= limit);
		/* Make sure we don't terminate early. */
		FUNC3(&sg[index]);
		FUNC2(&sg[index++], pdata[i++], s, data_off);
		data_off = 0;
		count -= s;
		nr_pages--;
	}

	if (index-start)
		FUNC1(&sg[index - 1]);
	return index - start;
}