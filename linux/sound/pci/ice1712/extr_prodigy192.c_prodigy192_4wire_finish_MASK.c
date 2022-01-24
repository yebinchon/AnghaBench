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
 unsigned int VT1724_PRODIGY192_CS ; 
 int /*<<< orphan*/  FUNC0 (struct snd_ice1712*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_ice1712*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static void FUNC3(struct snd_ice1712 *ice, unsigned int tmp)
{
	tmp |= VT1724_PRODIGY192_CS; /* raise chip select */
	FUNC0(ice, tmp);
	FUNC2(1);
	FUNC1(ice);
}