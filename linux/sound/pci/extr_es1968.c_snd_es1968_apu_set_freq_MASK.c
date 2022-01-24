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
struct es1968 {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct es1968*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct es1968*,int,int,int) ; 

__attribute__((used)) static void FUNC2(struct es1968 *chip, int apu, int freq)
{
	FUNC1(chip, apu, 2,
			   (FUNC0(chip, apu, 2) & 0x00FF) |
			   ((freq & 0xff) << 8) | 0x10);
	FUNC1(chip, apu, 3, freq >> 8);
}