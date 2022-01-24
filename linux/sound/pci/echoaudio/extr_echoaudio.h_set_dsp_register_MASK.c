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
typedef  size_t u32 ;
struct echoaudio {int /*<<< orphan*/ * dsp_registers; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (size_t,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC1(struct echoaudio *chip, u32 index,
				    u32 value)
{
	FUNC0(value, &chip->dsp_registers[index]);
}