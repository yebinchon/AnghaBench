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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct wmfw_adsp_alg_data {int /*<<< orphan*/  ncoeff; int /*<<< orphan*/  name; int /*<<< orphan*/  id; int /*<<< orphan*/ * data; } ;
struct wm_coeff_parsed_alg {void* ncoeff; int /*<<< orphan*/  name; int /*<<< orphan*/  name_len; void* id; } ;
struct wm_adsp {int fw_ver; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct wm_adsp*,char*,void*,...) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 void* FUNC3 (int,int /*<<< orphan*/  const**) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/  const**,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC5(struct wm_adsp *dsp, const u8 **data,
				      struct wm_coeff_parsed_alg *blk)
{
	const struct wmfw_adsp_alg_data *raw;

	switch (dsp->fw_ver) {
	case 0:
	case 1:
		raw = (const struct wmfw_adsp_alg_data *)*data;
		*data = raw->data;

		blk->id = FUNC1(raw->id);
		blk->name = raw->name;
		blk->name_len = FUNC2(raw->name);
		blk->ncoeff = FUNC1(raw->ncoeff);
		break;
	default:
		blk->id = FUNC3(sizeof(raw->id), data);
		blk->name_len = FUNC4(sizeof(u8), data,
						      &blk->name);
		FUNC4(sizeof(u16), data, NULL);
		blk->ncoeff = FUNC3(sizeof(raw->ncoeff), data);
		break;
	}

	FUNC0(dsp, "Algorithm ID: %#x\n", blk->id);
	FUNC0(dsp, "Algorithm name: %.*s\n", blk->name_len, blk->name);
	FUNC0(dsp, "# of coefficient descriptors: %#x\n", blk->ncoeff);
}