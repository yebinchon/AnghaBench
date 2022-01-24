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
struct snd_ice1712 {unsigned int* pro_volumes; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct snd_ice1712*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MONITOR_INDEX ; 
 int /*<<< orphan*/  MONITOR_VOLUME ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned short,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct snd_ice1712 *ice, int index)
{
	unsigned int vol = ice->pro_volumes[index];
	unsigned short val = 0;

	val |= (vol & 0x8000) == 0 ? (96 - (vol & 0x7f)) : 0x7f;
	val |= ((vol & 0x80000000) == 0 ? (96 - ((vol >> 16) & 0x7f)) : 0x7f) << 8;
	FUNC1(index, FUNC0(ice, MONITOR_INDEX));
	FUNC2(val, FUNC0(ice, MONITOR_VOLUME));
}