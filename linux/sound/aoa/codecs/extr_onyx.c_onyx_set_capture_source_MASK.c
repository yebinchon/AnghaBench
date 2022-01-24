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
struct onyx {int /*<<< orphan*/  mutex; } ;
typedef  int /*<<< orphan*/  s8 ;

/* Variables and functions */
 int /*<<< orphan*/  ONYX_ADC_INPUT_MIC ; 
 int /*<<< orphan*/  ONYX_REG_ADC_CONTROL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct onyx*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct onyx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct onyx *onyx, int mic)
{
	s8 v;

	FUNC0(&onyx->mutex);
	FUNC2(onyx, ONYX_REG_ADC_CONTROL, &v);
	v &= ~ONYX_ADC_INPUT_MIC;
	if (mic)
		v |= ONYX_ADC_INPUT_MIC;
	FUNC3(onyx, ONYX_REG_ADC_CONTROL, v);
	FUNC1(&onyx->mutex);
}