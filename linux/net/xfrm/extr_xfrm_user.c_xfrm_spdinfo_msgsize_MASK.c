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
struct xfrmu_spdinfo {int dummy; } ;
struct xfrmu_spdhthresh {int dummy; } ;
struct xfrmu_spdhinfo {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (int) ; 
 unsigned int FUNC1 (int) ; 

__attribute__((used)) static inline unsigned int FUNC2(void)
{
	return FUNC0(4)
	       + FUNC1(sizeof(struct xfrmu_spdinfo))
	       + FUNC1(sizeof(struct xfrmu_spdhinfo))
	       + FUNC1(sizeof(struct xfrmu_spdhthresh))
	       + FUNC1(sizeof(struct xfrmu_spdhthresh));
}