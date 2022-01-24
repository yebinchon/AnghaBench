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
struct mld2_query {int mld2q_qqic; } ;
struct inet6_dev {unsigned long mc_qi; } ;

/* Variables and functions */
 unsigned long HZ ; 
 unsigned long FUNC0 (unsigned long) ; 
 unsigned long FUNC1 (unsigned long) ; 

__attribute__((used)) static void FUNC2(struct inet6_dev *idev,
			  const struct mld2_query *mlh2)
{
	/* RFC3810, relevant sections:
	 *  - 5.1.9. QQIC (Querier's Query Interval Code)
	 *  - 9.2. Query Interval
	 *  - 9.12. Older Version Querier Present Timeout
	 *    (the [Query Interval] in the last Query received)
	 */
	unsigned long mc_qqi;

	if (mlh2->mld2q_qqic < 128) {
		mc_qqi = mlh2->mld2q_qqic;
	} else {
		unsigned long mc_man, mc_exp;

		mc_exp = FUNC0(mlh2->mld2q_qqic);
		mc_man = FUNC1(mlh2->mld2q_qqic);

		mc_qqi = (mc_man | 0x10) << (mc_exp + 3);
	}

	idev->mc_qi = mc_qqi * HZ;
}