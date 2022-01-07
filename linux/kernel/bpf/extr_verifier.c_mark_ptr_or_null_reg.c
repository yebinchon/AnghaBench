
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct bpf_reg_state {scalar_t__ type; scalar_t__ id; scalar_t__ ref_obj_id; TYPE_1__* map_ptr; scalar_t__ off; int var_off; scalar_t__ smax_value; scalar_t__ smin_value; } ;
struct bpf_func_state {int dummy; } ;
struct TYPE_2__ {scalar_t__ map_type; struct TYPE_2__* inner_map_meta; } ;


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
 scalar_t__ WARN_ON_ONCE (int) ;
 int __mark_reg_known_zero (struct bpf_reg_state*) ;
 int reg_may_point_to_spin_lock (struct bpf_reg_state*) ;
 scalar_t__ reg_type_may_be_null (scalar_t__) ;
 int tnum_equals_const (int ,int ) ;

__attribute__((used)) static void mark_ptr_or_null_reg(struct bpf_func_state *state,
     struct bpf_reg_state *reg, u32 id,
     bool is_null)
{
 if (reg_type_may_be_null(reg->type) && reg->id == id) {




  if (WARN_ON_ONCE(reg->smin_value || reg->smax_value ||
     !tnum_equals_const(reg->var_off, 0) ||
     reg->off)) {
   __mark_reg_known_zero(reg);
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




   reg->id = 0;
   reg->ref_obj_id = 0;
  } else if (!reg_may_point_to_spin_lock(reg)) {






   reg->id = 0;
  }
 }
}
