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
struct scatterlist {int offset; scalar_t__ length; } ;
struct scatter_walk {int offset; struct scatterlist* sg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct scatterlist*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct scatterlist*) ; 
 int /*<<< orphan*/  FUNC2 (struct scatterlist*) ; 
 int /*<<< orphan*/  FUNC3 (struct scatterlist*,int /*<<< orphan*/ ,scalar_t__,int) ; 

__attribute__((used)) static void FUNC4(struct scatterlist *sg, struct scatter_walk *walk)
{
	struct scatterlist *src = walk->sg;
	int diff = walk->offset - src->offset;

	FUNC3(sg, FUNC2(src),
		    src->length - diff, walk->offset);

	FUNC0(sg, FUNC1(src), 2);
}