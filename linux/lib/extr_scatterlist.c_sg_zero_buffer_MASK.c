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
struct sg_mapping_iter {int /*<<< orphan*/  addr; int /*<<< orphan*/  length; } ;
struct scatterlist {int dummy; } ;
typedef  int /*<<< orphan*/  off_t ;

/* Variables and functions */
 unsigned int SG_MITER_ATOMIC ; 
 unsigned int SG_MITER_TO_SG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ,size_t) ; 
 scalar_t__ FUNC2 (struct sg_mapping_iter*) ; 
 int /*<<< orphan*/  FUNC3 (struct sg_mapping_iter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sg_mapping_iter*,struct scatterlist*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct sg_mapping_iter*) ; 

size_t FUNC6(struct scatterlist *sgl, unsigned int nents,
		       size_t buflen, off_t skip)
{
	unsigned int offset = 0;
	struct sg_mapping_iter miter;
	unsigned int sg_flags = SG_MITER_ATOMIC | SG_MITER_TO_SG;

	FUNC4(&miter, sgl, nents, sg_flags);

	if (!FUNC3(&miter, skip))
		return false;

	while (offset < buflen && FUNC2(&miter)) {
		unsigned int len;

		len = FUNC1(miter.length, buflen - offset);
		FUNC0(miter.addr, 0, len);

		offset += len;
	}

	FUNC5(&miter);
	return offset;
}