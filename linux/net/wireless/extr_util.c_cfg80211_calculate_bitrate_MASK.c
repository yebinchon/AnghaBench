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
typedef  int /*<<< orphan*/  u32 ;
struct rate_info {int flags; int /*<<< orphan*/  legacy; } ;

/* Variables and functions */
 int RATE_INFO_FLAGS_DMG ; 
 int RATE_INFO_FLAGS_EDMG ; 
 int RATE_INFO_FLAGS_HE_MCS ; 
 int RATE_INFO_FLAGS_MCS ; 
 int RATE_INFO_FLAGS_VHT_MCS ; 
 int /*<<< orphan*/  FUNC0 (struct rate_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct rate_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct rate_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct rate_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct rate_info*) ; 

u32 FUNC5(struct rate_info *rate)
{
	if (rate->flags & RATE_INFO_FLAGS_MCS)
		return FUNC3(rate);
	if (rate->flags & RATE_INFO_FLAGS_DMG)
		return FUNC0(rate);
	if (rate->flags & RATE_INFO_FLAGS_EDMG)
		return FUNC1(rate);
	if (rate->flags & RATE_INFO_FLAGS_VHT_MCS)
		return FUNC4(rate);
	if (rate->flags & RATE_INFO_FLAGS_HE_MCS)
		return FUNC2(rate);

	return rate->legacy;
}