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
 int /*<<< orphan*/  FUNC0 (struct scatterlist*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct scatterlist*,unsigned int) ; 

void FUNC2(struct scatterlist *sgl, unsigned int nents)
{
	FUNC0(sgl, 0, sizeof(*sgl) * nents);
	FUNC1(sgl, nents);
}