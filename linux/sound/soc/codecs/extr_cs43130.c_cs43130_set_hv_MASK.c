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
typedef  scalar_t__ const u16 ;
struct regmap {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int CS43130_DC_THRESHOLD ; 
 int /*<<< orphan*/ * hv_seq ; 
 int /*<<< orphan*/  FUNC1 (struct regmap*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct regmap *regmap, u16 hpload_dc,
			  const u16 *dc_threshold)
{
	int i;

	for (i = 0; i < CS43130_DC_THRESHOLD; i++) {
		if (hpload_dc <= dc_threshold[i])
			break;
	}

	FUNC1(regmap, hv_seq[i], FUNC0(hv_seq[i]));

	return 0;
}