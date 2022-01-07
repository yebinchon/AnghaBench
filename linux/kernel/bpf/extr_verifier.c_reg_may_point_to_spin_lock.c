
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_reg_state {scalar_t__ type; int map_ptr; } ;


 scalar_t__ PTR_TO_MAP_VALUE ;
 scalar_t__ map_value_has_spin_lock (int ) ;

__attribute__((used)) static bool reg_may_point_to_spin_lock(const struct bpf_reg_state *reg)
{
 return reg->type == PTR_TO_MAP_VALUE &&
  map_value_has_spin_lock(reg->map_ptr);
}
