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
struct snd_ali {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ALI_GLOBAL_CONTROL ; 
 int /*<<< orphan*/  FUNC0 (struct snd_ali*,int /*<<< orphan*/ ) ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct snd_ali *codec,
					   unsigned int channel)
{
	unsigned long dwVal;

	dwVal  = FUNC1(FUNC0(codec, ALI_GLOBAL_CONTROL));
	dwVal |= 1 << (channel & 0x0000001f);
	FUNC2(dwVal, FUNC0(codec, ALI_GLOBAL_CONTROL));
}