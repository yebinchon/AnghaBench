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
struct wm_adsp {char* fwf_name; scalar_t__ name; int /*<<< orphan*/  dev; int /*<<< orphan*/  num; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 char* FUNC1 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 char FUNC2 (char) ; 

__attribute__((used)) static int FUNC3(struct wm_adsp *dsp)
{
	char *p;

	if (!dsp->name) {
		dsp->name = FUNC0(dsp->dev, GFP_KERNEL, "DSP%d",
					   dsp->num);
		if (!dsp->name)
			return -ENOMEM;
	}

	if (!dsp->fwf_name) {
		p = FUNC1(dsp->dev, dsp->name, GFP_KERNEL);
		if (!p)
			return -ENOMEM;

		dsp->fwf_name = p;
		for (; *p != 0; ++p)
			*p = FUNC2(*p);
	}

	return 0;
}