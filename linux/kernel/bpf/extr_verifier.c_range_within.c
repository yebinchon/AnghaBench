
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_reg_state {scalar_t__ umin_value; scalar_t__ umax_value; scalar_t__ smin_value; scalar_t__ smax_value; } ;



__attribute__((used)) static bool range_within(struct bpf_reg_state *old,
    struct bpf_reg_state *cur)
{
 return old->umin_value <= cur->umin_value &&
        old->umax_value >= cur->umax_value &&
        old->smin_value <= cur->smin_value &&
        old->smax_value >= cur->smax_value;
}
