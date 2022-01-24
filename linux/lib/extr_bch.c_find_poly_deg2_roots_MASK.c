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
struct gf_poly {size_t* c; } ;
struct bch_control {int* a_log_tab; unsigned int* xi_tab; } ;

/* Variables and functions */
 int FUNC0 (struct bch_control*) ; 
 unsigned int FUNC1 (struct bch_control*,int) ; 
 int FUNC2 (unsigned int) ; 
 unsigned int FUNC3 (struct bch_control*,unsigned int) ; 
 unsigned int FUNC4 (struct bch_control*,int) ; 

__attribute__((used)) static int FUNC5(struct bch_control *bch, struct gf_poly *poly,
				unsigned int *roots)
{
	int n = 0, i, l0, l1, l2;
	unsigned int u, v, r;

	if (poly->c[0] && poly->c[1]) {

		l0 = bch->a_log_tab[poly->c[0]];
		l1 = bch->a_log_tab[poly->c[1]];
		l2 = bch->a_log_tab[poly->c[2]];

		/* using z=a/bX, transform aX^2+bX+c into z^2+z+u (u=ac/b^2) */
		u = FUNC1(bch, l0+l2+2*(FUNC0(bch)-l1));
		/*
		 * let u = sum(li.a^i) i=0..m-1; then compute r = sum(li.xi):
		 * r^2+r = sum(li.(xi^2+xi)) = sum(li.(a^i+Tr(a^i).a^k)) =
		 * u + sum(li.Tr(a^i).a^k) = u+a^k.Tr(sum(li.a^i)) = u+a^k.Tr(u)
		 * i.e. r and r+1 are roots iff Tr(u)=0
		 */
		r = 0;
		v = u;
		while (v) {
			i = FUNC2(v);
			r ^= bch->xi_tab[i];
			v ^= (1 << i);
		}
		/* verify root */
		if ((FUNC3(bch, r)^r) == u) {
			/* reverse z=a/bX transformation and compute log(1/r) */
			roots[n++] = FUNC4(bch, 2*FUNC0(bch)-l1-
					    bch->a_log_tab[r]+l2);
			roots[n++] = FUNC4(bch, 2*FUNC0(bch)-l1-
					    bch->a_log_tab[r^1]+l2);
		}
	}
	return n;
}