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

/* Variables and functions */
 struct scatterlist* FUNC0 (struct scatterlist*) ; 

int FUNC1(struct scatterlist *sg)
{
	int nents;
	for (nents = 0; sg; sg = FUNC0(sg))
		nents++;
	return nents;
}