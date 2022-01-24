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
 int /*<<< orphan*/  FUNC0 (struct snd_ice1712*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_ice1712*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SPDIF_CFG ; 
 int /*<<< orphan*/  SPDIF_CTRL ; 
 unsigned char VT1724_CFG_SPDIF_OUT_EN ; 
 unsigned char FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct snd_ice1712 *ice, unsigned int val)
{
	unsigned char cbit, disabled;

	cbit = FUNC2(FUNC1(ice, SPDIF_CFG));
	disabled = cbit & ~VT1724_CFG_SPDIF_OUT_EN;
	if (cbit != disabled)
		FUNC3(disabled, FUNC1(ice, SPDIF_CFG));
	FUNC4(val, FUNC0(ice, SPDIF_CTRL));
	if (cbit != disabled)
		FUNC3(cbit, FUNC1(ice, SPDIF_CFG));
	FUNC4(val, FUNC0(ice, SPDIF_CTRL));
}