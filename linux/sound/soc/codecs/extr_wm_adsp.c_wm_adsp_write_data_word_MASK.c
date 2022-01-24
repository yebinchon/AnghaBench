#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct wm_adsp_region {int dummy; } ;
struct wm_adsp {int /*<<< orphan*/  regmap; TYPE_1__* ops; } ;
typedef  int /*<<< orphan*/  data ;
struct TYPE_2__ {unsigned int (* region_to_reg ) (struct wm_adsp_region const*,unsigned int) ;} ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,unsigned int,int*,int) ; 
 unsigned int FUNC2 (struct wm_adsp_region const*,unsigned int) ; 
 struct wm_adsp_region* FUNC3 (struct wm_adsp*,int) ; 

__attribute__((used)) static int FUNC4(struct wm_adsp *dsp, int mem_type,
				   unsigned int mem_addr, u32 data)
{
	struct wm_adsp_region const *mem = FUNC3(dsp, mem_type);
	unsigned int reg;

	if (!mem)
		return -EINVAL;

	reg = dsp->ops->region_to_reg(mem, mem_addr);

	data = FUNC0(data & 0x00ffffffu);

	return FUNC1(dsp->regmap, reg, &data, sizeof(data));
}