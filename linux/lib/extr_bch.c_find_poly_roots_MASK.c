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
struct gf_poly {int deg; } ;
struct bch_control {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct bch_control*) ; 
 int /*<<< orphan*/  FUNC1 (struct bch_control*,unsigned int,struct gf_poly*,struct gf_poly**,struct gf_poly**) ; 
 int FUNC2 (struct bch_control*,struct gf_poly*,unsigned int*) ; 
 int FUNC3 (struct bch_control*,struct gf_poly*,unsigned int*) ; 
 int FUNC4 (struct bch_control*,struct gf_poly*,unsigned int*) ; 
 int FUNC5 (struct bch_control*,struct gf_poly*,unsigned int*) ; 

__attribute__((used)) static int FUNC6(struct bch_control *bch, unsigned int k,
			   struct gf_poly *poly, unsigned int *roots)
{
	int cnt;
	struct gf_poly *f1, *f2;

	switch (poly->deg) {
		/* handle low degree polynomials with ad hoc techniques */
	case 1:
		cnt = FUNC2(bch, poly, roots);
		break;
	case 2:
		cnt = FUNC3(bch, poly, roots);
		break;
	case 3:
		cnt = FUNC4(bch, poly, roots);
		break;
	case 4:
		cnt = FUNC5(bch, poly, roots);
		break;
	default:
		/* factor polynomial using Berlekamp Trace Algorithm (BTA) */
		cnt = 0;
		if (poly->deg && (k <= FUNC0(bch))) {
			FUNC1(bch, k, poly, &f1, &f2);
			if (f1)
				cnt += FUNC6(bch, k+1, f1, roots);
			if (f2)
				cnt += FUNC6(bch, k+1, f2, roots+cnt);
		}
		break;
	}
	return cnt;
}