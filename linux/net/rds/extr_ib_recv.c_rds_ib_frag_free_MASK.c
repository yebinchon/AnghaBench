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
struct rds_page_frag {int /*<<< orphan*/  f_cache_entry; int /*<<< orphan*/  f_sg; } ;
struct rds_ib_connection {int /*<<< orphan*/  i_cache_allocs; int /*<<< orphan*/  i_cache_frags; } ;

/* Variables and functions */
 int RDS_FRAG_SIZE ; 
 int SZ_1K ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,struct rds_page_frag*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  s_ib_recv_added_to_cache ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct rds_ib_connection *ic,
			     struct rds_page_frag *frag)
{
	FUNC3("frag %p page %p\n", frag, FUNC4(&frag->f_sg));

	FUNC1(&frag->f_cache_entry, &ic->i_cache_frags);
	FUNC0(RDS_FRAG_SIZE / SZ_1K, &ic->i_cache_allocs);
	FUNC2(s_ib_recv_added_to_cache, RDS_FRAG_SIZE);
}