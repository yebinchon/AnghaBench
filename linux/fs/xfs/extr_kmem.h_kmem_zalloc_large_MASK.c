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
typedef  int xfs_km_flags_t ;

/* Variables and functions */
 int KM_ZERO ; 
 void* FUNC0 (size_t,int) ; 

__attribute__((used)) static inline void *
FUNC1(size_t size, xfs_km_flags_t flags)
{
	return FUNC0(size, flags | KM_ZERO);
}