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
struct bch_control {struct bch_control** poly_2t; struct bch_control* elp; struct bch_control* cache; struct bch_control* syn; struct bch_control* xi_tab; struct bch_control* ecc_buf2; struct bch_control* ecc_buf; struct bch_control* mod8_tab; struct bch_control* a_log_tab; struct bch_control* a_pow_tab; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct bch_control**) ; 
 int /*<<< orphan*/  FUNC1 (struct bch_control*) ; 

void FUNC2(struct bch_control *bch)
{
	unsigned int i;

	if (bch) {
		FUNC1(bch->a_pow_tab);
		FUNC1(bch->a_log_tab);
		FUNC1(bch->mod8_tab);
		FUNC1(bch->ecc_buf);
		FUNC1(bch->ecc_buf2);
		FUNC1(bch->xi_tab);
		FUNC1(bch->syn);
		FUNC1(bch->cache);
		FUNC1(bch->elp);

		for (i = 0; i < FUNC0(bch->poly_2t); i++)
			FUNC1(bch->poly_2t[i]);

		FUNC1(bch);
	}
}