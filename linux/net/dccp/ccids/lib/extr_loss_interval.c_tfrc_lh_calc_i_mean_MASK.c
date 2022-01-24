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
typedef  int u32 ;
struct tfrc_loss_hist {int i_mean; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int FUNC1 (struct tfrc_loss_hist*,int) ; 
 int FUNC2 (struct tfrc_loss_hist*) ; 
 int* tfrc_lh_weights ; 

__attribute__((used)) static void FUNC3(struct tfrc_loss_hist *lh)
{
	u32 i_i, i_tot0 = 0, i_tot1 = 0, w_tot = 0;
	int i, k = FUNC2(lh) - 1; /* k is as in rfc3448bis, 5.4 */

	if (k <= 0)
		return;

	for (i = 0; i <= k; i++) {
		i_i = FUNC1(lh, i);

		if (i < k) {
			i_tot0 += i_i * tfrc_lh_weights[i];
			w_tot  += tfrc_lh_weights[i];
		}
		if (i > 0)
			i_tot1 += i_i * tfrc_lh_weights[i-1];
	}

	lh->i_mean = FUNC0(i_tot0, i_tot1) / w_tot;
}