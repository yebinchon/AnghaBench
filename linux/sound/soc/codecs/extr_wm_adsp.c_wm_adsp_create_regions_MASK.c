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
struct wm_adsp_alg_region {int dummy; } ;
struct wm_adsp {int dummy; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct wm_adsp_alg_region*) ; 
 int FUNC1 (struct wm_adsp_alg_region*) ; 
 struct wm_adsp_alg_region* FUNC2 (struct wm_adsp*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct wm_adsp *dsp, __be32 id, int nregions,
				int *type, __be32 *base)
{
	struct wm_adsp_alg_region *alg_region;
	int i;

	for (i = 0; i < nregions; i++) {
		alg_region = FUNC2(dsp, type[i], id, base[i]);
		if (FUNC0(alg_region))
			return FUNC1(alg_region);
	}

	return 0;
}