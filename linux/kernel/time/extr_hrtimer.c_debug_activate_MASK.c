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
struct hrtimer {int dummy; } ;
typedef  enum hrtimer_mode { ____Placeholder_hrtimer_mode } hrtimer_mode ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hrtimer*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct hrtimer*,int) ; 

__attribute__((used)) static inline void FUNC2(struct hrtimer *timer,
				  enum hrtimer_mode mode)
{
	FUNC0(timer, mode);
	FUNC1(timer, mode);
}