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
struct sg_table {int nents; int orig_nents; int /*<<< orphan*/  sgl; } ;
struct scatterlist {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  SG_CHUNK_SIZE ; 
 int FUNC1 (struct sg_table*,int,int /*<<< orphan*/ ,struct scatterlist*,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sg_table*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  sg_pool_alloc ; 
 scalar_t__ FUNC4 (int) ; 

int FUNC5(struct sg_table *table, int nents,
		struct scatterlist *first_chunk, unsigned nents_first_chunk)
{
	int ret;

	FUNC0(!nents);

	if (first_chunk && nents_first_chunk) {
		if (nents <= nents_first_chunk) {
			table->nents = table->orig_nents = nents;
			FUNC3(table->sgl, nents);
			return 0;
		}
	}

	/* User supposes that the 1st SGL includes real entry */
	if (nents_first_chunk <= 1) {
		first_chunk = NULL;
		nents_first_chunk = 0;
	}

	ret = FUNC1(table, nents, SG_CHUNK_SIZE,
			       first_chunk, nents_first_chunk,
			       GFP_ATOMIC, sg_pool_alloc);
	if (FUNC4(ret))
		FUNC2(table, nents_first_chunk);
	return ret;
}