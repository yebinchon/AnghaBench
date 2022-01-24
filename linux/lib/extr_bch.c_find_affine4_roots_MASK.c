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
struct bch_control {unsigned int* a_pow_tab; } ;

/* Variables and functions */
 int FUNC0 (struct bch_control*) ; 
 int FUNC1 (struct bch_control*,unsigned int) ; 
 size_t FUNC2 (struct bch_control*,int) ; 
 int FUNC3 (struct bch_control*,unsigned int*,unsigned int*,int) ; 

__attribute__((used)) static int FUNC4(struct bch_control *bch, unsigned int a,
			      unsigned int b, unsigned int c,
			      unsigned int *roots)
{
	int i, j, k;
	const int m = FUNC0(bch);
	unsigned int mask = 0xff, t, rows[16] = {0,};

	j = FUNC1(bch, b);
	k = FUNC1(bch, a);
	rows[0] = c;

	/* buid linear system to solve X^4+aX^2+bX+c = 0 */
	for (i = 0; i < m; i++) {
		rows[i+1] = bch->a_pow_tab[4*i]^
			(a ? bch->a_pow_tab[FUNC2(bch, k)] : 0)^
			(b ? bch->a_pow_tab[FUNC2(bch, j)] : 0);
		j++;
		k += 2;
	}
	/*
	 * transpose 16x16 matrix before passing it to linear solver
	 * warning: this code assumes m < 16
	 */
	for (j = 8; j != 0; j >>= 1, mask ^= (mask << j)) {
		for (k = 0; k < 16; k = (k+j+1) & ~j) {
			t = ((rows[k] >> j)^rows[k+j]) & mask;
			rows[k] ^= (t << j);
			rows[k+j] ^= t;
		}
	}
	return FUNC3(bch, rows, roots, 4);
}