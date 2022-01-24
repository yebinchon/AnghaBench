#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct snd_sof_dev {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* dsp_stack ) (struct snd_sof_dev*,void*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct snd_sof_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_sof_dev*,void*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC2(struct snd_sof_dev *sdev, void *oops, u32 *stack,
			     u32 stack_words)
{
	if (FUNC0(sdev)->dsp_stack)
		FUNC0(sdev)->dsp_stack(sdev, oops, stack, stack_words);
}