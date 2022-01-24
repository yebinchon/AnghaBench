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
struct tpacket_req {unsigned int tp_block_nr; } ;
struct pgv {int /*<<< orphan*/  buffer; } ;

/* Variables and functions */
 int GFP_KERNEL ; 
 int __GFP_NOWARN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct pgv*,int,unsigned int) ; 
 struct pgv* FUNC2 (unsigned int,int,int) ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static struct pgv *FUNC4(struct tpacket_req *req, int order)
{
	unsigned int block_nr = req->tp_block_nr;
	struct pgv *pg_vec;
	int i;

	pg_vec = FUNC2(block_nr, sizeof(struct pgv), GFP_KERNEL | __GFP_NOWARN);
	if (FUNC3(!pg_vec))
		goto out;

	for (i = 0; i < block_nr; i++) {
		pg_vec[i].buffer = FUNC0(order);
		if (FUNC3(!pg_vec[i].buffer))
			goto out_free_pgvec;
	}

out:
	return pg_vec;

out_free_pgvec:
	FUNC1(pg_vec, order, block_nr);
	pg_vec = NULL;
	goto out;
}