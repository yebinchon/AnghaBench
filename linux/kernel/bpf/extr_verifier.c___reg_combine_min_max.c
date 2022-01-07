
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_reg_state {int var_off; void* smax_value; void* smin_value; void* umax_value; void* umin_value; } ;


 int __reg_bound_offset (struct bpf_reg_state*) ;
 int __reg_deduce_bounds (struct bpf_reg_state*) ;
 int __update_reg_bounds (struct bpf_reg_state*) ;
 void* max (void*,void*) ;
 void* min (void*,void*) ;
 int tnum_intersect (int ,int ) ;

__attribute__((used)) static void __reg_combine_min_max(struct bpf_reg_state *src_reg,
      struct bpf_reg_state *dst_reg)
{
 src_reg->umin_value = dst_reg->umin_value = max(src_reg->umin_value,
       dst_reg->umin_value);
 src_reg->umax_value = dst_reg->umax_value = min(src_reg->umax_value,
       dst_reg->umax_value);
 src_reg->smin_value = dst_reg->smin_value = max(src_reg->smin_value,
       dst_reg->smin_value);
 src_reg->smax_value = dst_reg->smax_value = min(src_reg->smax_value,
       dst_reg->smax_value);
 src_reg->var_off = dst_reg->var_off = tnum_intersect(src_reg->var_off,
            dst_reg->var_off);

 __update_reg_bounds(src_reg);
 __update_reg_bounds(dst_reg);

 __reg_deduce_bounds(src_reg);
 __reg_deduce_bounds(dst_reg);

 __reg_bound_offset(src_reg);
 __reg_bound_offset(dst_reg);




 __update_reg_bounds(src_reg);
 __update_reg_bounds(dst_reg);
}
