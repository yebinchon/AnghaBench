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
struct rate_info {size_t mcs; int const n_bonded_ch; } ;

/* Variables and functions */
 size_t FUNC0 (int const*) ; 
 scalar_t__ FUNC1 (int) ; 

__attribute__((used)) static u32 FUNC2(struct rate_info *rate)
{
	static const u32 __mcs2bitrate[] = {
		/* control PHY */
		[0] =   275,
		/* SC PHY */
		[1] =  3850,
		[2] =  7700,
		[3] =  9625,
		[4] = 11550,
		[5] = 12512, /* 1251.25 mbps */
		[6] = 13475,
		[7] = 15400,
		[8] = 19250,
		[9] = 23100,
		[10] = 25025,
		[11] = 26950,
		[12] = 30800,
		[13] = 38500,
		[14] = 46200,
		[15] = 50050,
		[16] = 53900,
		[17] = 57750,
		[18] = 69300,
		[19] = 75075,
		[20] = 80850,
	};

	if (FUNC1(rate->mcs >= FUNC0(__mcs2bitrate)))
		return 0;

	return __mcs2bitrate[rate->mcs] * rate->n_bonded_ch;
}