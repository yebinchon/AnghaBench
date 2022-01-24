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
struct snd_ice1712 {int /*<<< orphan*/  vt1720; } ;

/* Variables and functions */
 int /*<<< orphan*/  GPIO_DATA ; 
 int /*<<< orphan*/  GPIO_DATA_22 ; 
 int /*<<< orphan*/  FUNC0 (struct snd_ice1712*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct snd_ice1712 *ice, unsigned int data)
{
	FUNC3(data, FUNC0(ice, GPIO_DATA));
	if (!ice->vt1720)
		FUNC2(data >> 16, FUNC0(ice, GPIO_DATA_22));
	FUNC1(FUNC0(ice, GPIO_DATA)); /* dummy read for pci-posting */
}