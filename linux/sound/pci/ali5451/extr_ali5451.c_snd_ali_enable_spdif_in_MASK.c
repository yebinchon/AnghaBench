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
 int /*<<< orphan*/  ALI_SPDIF_CTRL ; 
 int /*<<< orphan*/  ALI_SPDIF_IN_CHANNEL ; 
 unsigned int ALI_SPDIF_IN_SUPPORT ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_ali*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct snd_ali *codec)
{	
	unsigned int dwVal;

	dwVal = FUNC2(FUNC0(codec, ALI_GLOBAL_CONTROL));
	dwVal |= ALI_SPDIF_IN_SUPPORT;
	FUNC4(dwVal, FUNC0(codec, ALI_GLOBAL_CONTROL));

	dwVal = FUNC1(FUNC0(codec, ALI_SPDIF_CTRL));
	dwVal |= 0x02;
	FUNC3(dwVal, FUNC0(codec, ALI_SPDIF_CTRL));

	FUNC5(codec, ALI_SPDIF_IN_CHANNEL);
}