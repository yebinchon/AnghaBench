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
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_emu8000*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_emu8000*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_emu8000*,int) ; 
 int /*<<< orphan*/  init1 ; 
 int /*<<< orphan*/  init2 ; 
 int /*<<< orphan*/  init3 ; 
 int /*<<< orphan*/  init4 ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_emu8000*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC6(struct snd_emu8000 *emu)
{
	FUNC5(emu, init1, FUNC0(init1)/4);

	FUNC4((1024 * 1000) / 44100); /* wait for 1024 clocks */
	FUNC5(emu, init2, FUNC0(init2)/4);
	FUNC5(emu, init3, FUNC0(init3)/4);

	FUNC1(emu, 0);
	FUNC2(emu, 0x83);
	FUNC3(emu, 0x8000);

	FUNC5(emu, init4, FUNC0(init4)/4);
}