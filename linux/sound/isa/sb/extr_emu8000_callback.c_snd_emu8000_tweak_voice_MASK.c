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
 int /*<<< orphan*/  FUNC0 (struct snd_emu8000*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_emu8000*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_emu8000*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_emu8000*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_emu8000*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_emu8000*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_emu8000*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct snd_emu8000*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct snd_emu8000*,int,int) ; 
 int /*<<< orphan*/  FUNC9 (struct snd_emu8000*,int,int) ; 
 int /*<<< orphan*/  FUNC10 (struct snd_emu8000*,int,int) ; 
 int /*<<< orphan*/  FUNC11 (struct snd_emu8000*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct snd_emu8000*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC13(struct snd_emu8000 *emu, int i)
{
	/* set all mod/vol envelope shape to minimum */
	FUNC4(emu, i, 0x8000);
	FUNC3(emu, i, 0x8000);
	FUNC2(emu, i, 0x7F7F);
	FUNC0(emu, i, 0x7F7F);
	FUNC1(emu, i, 0x7F7F);
	FUNC11(emu, i, 0);  /* mod envelope height to zero */
	FUNC9(emu, i, 0x8000); /* no delay for LFO1 */
	FUNC10(emu, i, 0x8000);
	FUNC8(emu, i, 0xE000);	/* no pitch shift */
	FUNC7(emu, i, 0xFF00);	/* volume to minimum */
	FUNC6(emu, i, 0);
	FUNC12(emu, i, 0);
	FUNC5(emu, i, 0);
}