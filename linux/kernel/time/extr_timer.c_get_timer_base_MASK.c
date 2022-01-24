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
struct timer_base {int dummy; } ;

/* Variables and functions */
 int TIMER_CPUMASK ; 
 struct timer_base* FUNC0 (int,int) ; 

__attribute__((used)) static inline struct timer_base *FUNC1(u32 tflags)
{
	return FUNC0(tflags, tflags & TIMER_CPUMASK);
}