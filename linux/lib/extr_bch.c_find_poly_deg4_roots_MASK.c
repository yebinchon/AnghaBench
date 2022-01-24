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
struct gf_poly {unsigned int* c; } ;
struct bch_control {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct bch_control*) ; 
 unsigned int FUNC1 (struct bch_control*,unsigned int) ; 
 int FUNC2 (struct bch_control*,unsigned int) ; 
 unsigned int FUNC3 (struct bch_control*,int) ; 
 int FUNC4 (struct bch_control*,unsigned int,unsigned int,unsigned int,unsigned int*) ; 
 unsigned int FUNC5 (struct bch_control*,unsigned int,unsigned int) ; 
 unsigned int FUNC6 (struct bch_control*,unsigned int) ; 
 unsigned int FUNC7 (struct bch_control*,unsigned int,unsigned int) ; 

__attribute__((used)) static int FUNC8(struct bch_control *bch, struct gf_poly *poly,
				unsigned int *roots)
{
	int i, l, n = 0;
	unsigned int a, b, c, d, e = 0, f, a2, b2, c2, e4;

	if (poly->c[0] == 0)
		return 0;

	/* transform polynomial into monic X^4 + aX^3 + bX^2 + cX + d */
	e4 = poly->c[4];
	d = FUNC5(bch, poly->c[0], e4);
	c = FUNC5(bch, poly->c[1], e4);
	b = FUNC5(bch, poly->c[2], e4);
	a = FUNC5(bch, poly->c[3], e4);

	/* use Y=1/X transformation to get an affine polynomial */
	if (a) {
		/* first, eliminate cX by using z=X+e with ae^2+c=0 */
		if (c) {
			/* compute e such that e^2 = c/a */
			f = FUNC5(bch, c, a);
			l = FUNC2(bch, f);
			l += (l & 1) ? FUNC0(bch) : 0;
			e = FUNC3(bch, l/2);
			/*
			 * use transformation z=X+e:
			 * z^4+e^4 + a(z^3+ez^2+e^2z+e^3) + b(z^2+e^2) +cz+ce+d
			 * z^4 + az^3 + (ae+b)z^2 + (ae^2+c)z+e^4+be^2+ae^3+ce+d
			 * z^4 + az^3 + (ae+b)z^2 + e^4+be^2+d
			 * z^4 + az^3 +     b'z^2 + d'
			 */
			d = FUNC3(bch, 2*l)^FUNC7(bch, b, f)^d;
			b = FUNC7(bch, a, e)^b;
		}
		/* now, use Y=1/X to get Y^4 + b/dY^2 + a/dY + 1/d */
		if (d == 0)
			/* assume all roots have multiplicity 1 */
			return 0;

		c2 = FUNC6(bch, d);
		b2 = FUNC5(bch, a, d);
		a2 = FUNC5(bch, b, d);
	} else {
		/* polynomial is already affine */
		c2 = d;
		b2 = c;
		a2 = b;
	}
	/* find the 4 roots of this affine polynomial */
	if (FUNC4(bch, a2, b2, c2, roots) == 4) {
		for (i = 0; i < 4; i++) {
			/* post-process roots (reverse transformations) */
			f = a ? FUNC6(bch, roots[i]) : roots[i];
			roots[i] = FUNC1(bch, f^e);
		}
		n = 4;
	}
	return n;
}