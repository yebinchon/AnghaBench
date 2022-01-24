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
typedef  int /*<<< orphan*/  u32 ;
struct fib6_result {scalar_t__ f6i; } ;
struct fib6_node {int dummy; } ;
struct fib6_info {int /*<<< orphan*/  fib6_metric; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fib6_info*,struct fib6_info*,int /*<<< orphan*/ ,struct fib6_result*,struct fib6_info**,int,int,int*,int*) ; 

__attribute__((used)) static void FUNC1(struct fib6_node *fn, struct fib6_info *leaf,
			 struct fib6_info *rr_head, int oif, int strict,
			 bool *do_rr, struct fib6_result *res)
{
	u32 metric = rr_head->fib6_metric;
	struct fib6_info *cont = NULL;
	int mpri = -1;

	FUNC0(rr_head, NULL, metric, res, &cont,
		       oif, strict, do_rr, &mpri);

	FUNC0(leaf, rr_head, metric, res, &cont,
		       oif, strict, do_rr, &mpri);

	if (res->f6i || !cont)
		return;

	FUNC0(cont, NULL, metric, res, NULL,
		       oif, strict, do_rr, &mpri);
}