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
struct snd_soc_component {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  RT5650_4BTN_IL_CMD1 ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int FUNC1 (struct snd_soc_component*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_soc_component*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct snd_soc_component *component)
{
	int btn_type, val;

	val = FUNC1(component, RT5650_4BTN_IL_CMD1);
	FUNC0("val=0x%x\n", val);
	btn_type = val & 0xfff0;
	FUNC2(component, RT5650_4BTN_IL_CMD1, val);

	return btn_type;
}