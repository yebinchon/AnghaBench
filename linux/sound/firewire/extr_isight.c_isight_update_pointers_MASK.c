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
struct snd_pcm_runtime {unsigned int buffer_size; scalar_t__ period_size; } ;
struct isight {unsigned int buffer_pointer; scalar_t__ period_counter; TYPE_1__* pcm; } ;
struct TYPE_2__ {struct snd_pcm_runtime* runtime; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC3(struct isight *isight, unsigned int count)
{
	struct snd_pcm_runtime *runtime = isight->pcm->runtime;
	unsigned int ptr;

	FUNC1(); /* update buffer data before buffer pointer */

	ptr = isight->buffer_pointer;
	ptr += count;
	if (ptr >= runtime->buffer_size)
		ptr -= runtime->buffer_size;
	FUNC0(isight->buffer_pointer, ptr);

	isight->period_counter += count;
	if (isight->period_counter >= runtime->period_size) {
		isight->period_counter -= runtime->period_size;
		FUNC2(isight->pcm);
	}
}