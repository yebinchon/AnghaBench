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
typedef  size_t u32 ;
struct TYPE_2__ {int /*<<< orphan*/  out_base; } ;
struct sst_dsp {TYPE_1__ mailbox; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,void*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (size_t,size_t) ; 
 int /*<<< orphan*/  FUNC2 (size_t) ; 

void FUNC3(struct sst_dsp *sst, void *message, size_t bytes)
{
	u32 i;

	FUNC2(bytes);

	FUNC0(sst->mailbox.out_base, message, bytes);

	for (i = 0; i < bytes; i += 4)
		FUNC1(i, *(u32 *)(message + i));
}