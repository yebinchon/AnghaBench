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
struct gf_poly {scalar_t__ deg; } ;
struct bch_control {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC1 (struct bch_control*,struct gf_poly*,struct gf_poly*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct gf_poly*) ; 

__attribute__((used)) static struct gf_poly *FUNC3(struct bch_control *bch, struct gf_poly *a,
				   struct gf_poly *b)
{
	struct gf_poly *tmp;

	FUNC0("gcd(%s,%s)=", FUNC2(a), FUNC2(b));

	if (a->deg < b->deg) {
		tmp = b;
		b = a;
		a = tmp;
	}

	while (b->deg > 0) {
		FUNC1(bch, a, b, NULL);
		tmp = b;
		b = a;
		a = tmp;
	}

	FUNC0("%s\n", FUNC2(a));

	return a;
}