#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct snd_ice1712 {struct se_spec* spec; } ;
struct se_spec {TYPE_1__* vol; } ;
struct TYPE_4__ {int target; int /*<<< orphan*/  ch; } ;
struct TYPE_3__ {int /*<<< orphan*/  ch1; int /*<<< orphan*/  ch2; } ;

/* Variables and functions */
#define  WM8766 133 
#define  WM8776afl 132 
#define  WM8776agc 131 
#define  WM8776in 130 
#define  WM8776out 129 
#define  WM8776sel 128 
 int /*<<< orphan*/  FUNC0 (struct snd_ice1712*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_ice1712*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_ice1712*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_ice1712*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_ice1712*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_ice1712*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* se200pci_cont ; 

__attribute__((used)) static void FUNC6(struct snd_ice1712 *ice, int n)
{
	struct se_spec *spec = ice->spec;
	switch (se200pci_cont[n].target) {
	case WM8766:
		FUNC0(ice,
					   se200pci_cont[n].ch,
					   spec->vol[n].ch1,
					   spec->vol[n].ch2);
		break;

	case WM8776in:
		FUNC4(ice,
						 spec->vol[n].ch1,
						 spec->vol[n].ch2);
		break;

	case WM8776out:
		FUNC5(ice,
						  spec->vol[n].ch1,
						  spec->vol[n].ch2);
		break;

	case WM8776sel:
		FUNC3(ice,
						   spec->vol[n].ch1);
		break;

	case WM8776agc:
		FUNC2(ice, spec->vol[n].ch1);
		break;

	case WM8776afl:
		FUNC1(ice, spec->vol[n].ch1);
		break;

	default:
		break;
	}
}