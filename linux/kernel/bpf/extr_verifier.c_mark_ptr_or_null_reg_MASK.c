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
typedef  scalar_t__ u32 ;
struct bpf_reg_state {scalar_t__ type; scalar_t__ id; scalar_t__ ref_obj_id; TYPE_1__* map_ptr; scalar_t__ off; int /*<<< orphan*/  var_off; scalar_t__ smax_value; scalar_t__ smin_value; } ;
struct bpf_func_state {int dummy; } ;
struct TYPE_2__ {scalar_t__ map_type; struct TYPE_2__* inner_map_meta; } ;

/* Variables and functions */
 scalar_t__ BPF_MAP_TYPE_XSKMAP ; 
 scalar_t__ CONST_PTR_TO_MAP ; 
 scalar_t__ PTR_TO_MAP_VALUE ; 
 scalar_t__ PTR_TO_MAP_VALUE_OR_NULL ; 
 scalar_t__ PTR_TO_SOCKET ; 
 scalar_t__ PTR_TO_SOCKET_OR_NULL ; 
 scalar_t__ PTR_TO_SOCK_COMMON ; 
 scalar_t__ PTR_TO_SOCK_COMMON_OR_NULL ; 
 scalar_t__ PTR_TO_TCP_SOCK ; 
 scalar_t__ PTR_TO_TCP_SOCK_OR_NULL ; 
 scalar_t__ PTR_TO_XDP_SOCK ; 
 scalar_t__ SCALAR_VALUE ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct bpf_reg_state*) ; 
 int /*<<< orphan*/  FUNC2 (struct bpf_reg_state*) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct bpf_func_state *state,
				 struct bpf_reg_state *reg, u32 id,
				 bool is_null)
{
	if (FUNC3(reg->type) && reg->id == id) {
		/* Old offset (both fixed and variable parts) should
		 * have been known-zero, because we don't allow pointer
		 * arithmetic on pointers that might be NULL.
		 */
		if (FUNC0(reg->smin_value || reg->smax_value ||
				 !FUNC4(reg->var_off, 0) ||
				 reg->off)) {
			FUNC1(reg);
			reg->off = 0;
		}
		if (is_null) {
			reg->type = SCALAR_VALUE;
		} else if (reg->type == PTR_TO_MAP_VALUE_OR_NULL) {
			if (reg->map_ptr->inner_map_meta) {
				reg->type = CONST_PTR_TO_MAP;
				reg->map_ptr = reg->map_ptr->inner_map_meta;
			} else if (reg->map_ptr->map_type ==
				   BPF_MAP_TYPE_XSKMAP) {
				reg->type = PTR_TO_XDP_SOCK;
			} else {
				reg->type = PTR_TO_MAP_VALUE;
			}
		} else if (reg->type == PTR_TO_SOCKET_OR_NULL) {
			reg->type = PTR_TO_SOCKET;
		} else if (reg->type == PTR_TO_SOCK_COMMON_OR_NULL) {
			reg->type = PTR_TO_SOCK_COMMON;
		} else if (reg->type == PTR_TO_TCP_SOCK_OR_NULL) {
			reg->type = PTR_TO_TCP_SOCK;
		}
		if (is_null) {
			/* We don't need id and ref_obj_id from this point
			 * onwards anymore, thus we should better reset it,
			 * so that state pruning has chances to take effect.
			 */
			reg->id = 0;
			reg->ref_obj_id = 0;
		} else if (!FUNC2(reg)) {
			/* For not-NULL ptr, reg->ref_obj_id will be reset
			 * in release_reg_references().
			 *
			 * reg->id is still used by spin_lock ptr. Other
			 * than spin_lock ptr type, reg->id can be reset.
			 */
			reg->id = 0;
		}
	}
}