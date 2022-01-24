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
struct sg_mapping_iter {unsigned int __flags; int /*<<< orphan*/  piter; } ;
struct scatterlist {int dummy; } ;

/* Variables and functions */
 unsigned int SG_MITER_FROM_SG ; 
 unsigned int SG_MITER_TO_SG ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct scatterlist*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sg_mapping_iter*,int /*<<< orphan*/ ,int) ; 

void FUNC3(struct sg_mapping_iter *miter, struct scatterlist *sgl,
		    unsigned int nents, unsigned int flags)
{
	FUNC2(miter, 0, sizeof(struct sg_mapping_iter));

	FUNC1(&miter->piter, sgl, nents, 0);
	FUNC0(!(flags & (SG_MITER_TO_SG | SG_MITER_FROM_SG)));
	miter->__flags = flags;
}