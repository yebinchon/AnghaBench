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
 int /*<<< orphan*/  FUNC0 (struct snd_ali*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ALI_SCTRL ; 
 unsigned char ALI_SPDIF_OUT_ENABLE ; 
 unsigned char FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_ali*) ; 

__attribute__((used)) static void FUNC4(struct snd_ali *codec)
{
	unsigned char  bVal;

	bVal = FUNC1(FUNC0(codec, ALI_SCTRL));
	FUNC2(bVal & ~ALI_SPDIF_OUT_ENABLE, FUNC0(codec, ALI_SCTRL));

	FUNC3(codec);
}