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
struct bpf_reg_state {int /*<<< orphan*/  var_off; void* smax_value; void* smin_value; void* umax_value; void* umin_value; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bpf_reg_state*) ; 
 int /*<<< orphan*/  FUNC1 (struct bpf_reg_state*) ; 
 int /*<<< orphan*/  FUNC2 (struct bpf_reg_state*) ; 
 void* FUNC3 (void*,void*) ; 
 void* FUNC4 (void*,void*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct bpf_reg_state *src_reg,
				  struct bpf_reg_state *dst_reg)
{
	src_reg->umin_value = dst_reg->umin_value = FUNC3(src_reg->umin_value,
							dst_reg->umin_value);
	src_reg->umax_value = dst_reg->umax_value = FUNC4(src_reg->umax_value,
							dst_reg->umax_value);
	src_reg->smin_value = dst_reg->smin_value = FUNC3(src_reg->smin_value,
							dst_reg->smin_value);
	src_reg->smax_value = dst_reg->smax_value = FUNC4(src_reg->smax_value,
							dst_reg->smax_value);
	src_reg->var_off = dst_reg->var_off = FUNC5(src_reg->var_off,
							     dst_reg->var_off);
	/* We might have learned new bounds from the var_off. */
	FUNC2(src_reg);
	FUNC2(dst_reg);
	/* We might have learned something about the sign bit. */
	FUNC1(src_reg);
	FUNC1(dst_reg);
	/* We might have learned some bits from the bounds. */
	FUNC0(src_reg);
	FUNC0(dst_reg);
	/* Intersecting with the old var_off might have improved our bounds
	 * slightly.  e.g. if umax was 0x7f...f and var_off was (0; 0xf...fc),
	 * then new var_off is (0; 0x7f...fc) which improves our umax.
	 */
	FUNC2(src_reg);
	FUNC2(dst_reg);
}