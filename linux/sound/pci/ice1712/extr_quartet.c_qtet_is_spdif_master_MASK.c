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
struct snd_ice1712 {int dummy; } ;

/* Variables and functions */
 int CPLD_SYNC_SEL ; 
 int FUNC0 (struct snd_ice1712*) ; 

__attribute__((used)) static inline int FUNC1(struct snd_ice1712 *ice)
{
	/* CPLD_SYNC_SEL: 0 = internal, 1 = external (i.e. spdif master) */
	return (FUNC0(ice) & CPLD_SYNC_SEL) ? 1 : 0;
}