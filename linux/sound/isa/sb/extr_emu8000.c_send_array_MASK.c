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
struct snd_emu8000 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct snd_emu8000*,int,unsigned short) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_emu8000*,int,unsigned short) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_emu8000*,int,unsigned short) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_emu8000*,int,unsigned short) ; 

__attribute__((used)) static void
FUNC4(struct snd_emu8000 *emu, unsigned short *data, int size)
{
	int i;
	unsigned short *p;

	p = data;
	for (i = 0; i < size; i++, p++)
		FUNC0(emu, i, *p);
	for (i = 0; i < size; i++, p++)
		FUNC1(emu, i, *p);
	for (i = 0; i < size; i++, p++)
		FUNC2(emu, i, *p);
	for (i = 0; i < size; i++, p++)
		FUNC3(emu, i, *p);
}