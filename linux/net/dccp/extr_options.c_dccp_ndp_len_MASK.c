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
typedef  int u8 ;
typedef  int u64 ;

/* Variables and functions */
 int const UINT_MAX ; 
 int const USHRT_MAX ; 
 scalar_t__ FUNC0 (int) ; 

__attribute__((used)) static inline u8 FUNC1(const u64 ndp)
{
	if (FUNC0(ndp <= 0xFF))
		return 1;
	return FUNC0(ndp <= USHRT_MAX) ? 2 : (ndp <= UINT_MAX ? 4 : 6);
}