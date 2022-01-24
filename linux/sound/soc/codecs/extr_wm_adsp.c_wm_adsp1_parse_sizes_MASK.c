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
struct wmfw_adsp1_sizes {int /*<<< orphan*/  zm; int /*<<< orphan*/  pm; int /*<<< orphan*/  dm; } ;
struct wm_adsp {int dummy; } ;
struct firmware {int /*<<< orphan*/ * data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct wm_adsp*,char*,char const* const,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned int FUNC2(struct wm_adsp *dsp,
					 const char * const file,
					 unsigned int pos,
					 const struct firmware *firmware)
{
	const struct wmfw_adsp1_sizes *adsp1_sizes;

	adsp1_sizes = (void *)&firmware->data[pos];

	FUNC0(dsp, "%s: %d DM, %d PM, %d ZM\n", file,
		 FUNC1(adsp1_sizes->dm), FUNC1(adsp1_sizes->pm),
		 FUNC1(adsp1_sizes->zm));

	return pos + sizeof(*adsp1_sizes);
}