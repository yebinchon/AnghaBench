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
struct gf_poly {int* c; } ;
struct bch_control {scalar_t__* a_log_tab; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct bch_control*) ; 
 unsigned int FUNC1 (struct bch_control*,scalar_t__) ; 

__attribute__((used)) static int FUNC2(struct bch_control *bch, struct gf_poly *poly,
				unsigned int *roots)
{
	int n = 0;

	if (poly->c[0])
		/* poly[X] = bX+c with c!=0, root=c/b */
		roots[n++] = FUNC1(bch, FUNC0(bch)-bch->a_log_tab[poly->c[0]]+
				   bch->a_log_tab[poly->c[1]]);
	return n;
}