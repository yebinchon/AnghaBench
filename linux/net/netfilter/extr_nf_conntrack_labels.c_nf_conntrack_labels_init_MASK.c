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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int NF_CT_LABELS_MAX_SIZE ; 
 int U8_MAX ; 
 int /*<<< orphan*/  labels_extend ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 

int FUNC2(void)
{
	FUNC0(NF_CT_LABELS_MAX_SIZE / sizeof(long) >= U8_MAX);

	return FUNC1(&labels_extend);
}