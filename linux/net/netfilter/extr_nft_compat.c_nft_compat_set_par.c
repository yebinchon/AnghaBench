
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_action_param {int hotdrop; void const* targinfo; void* target; } ;



__attribute__((used)) static inline void
nft_compat_set_par(struct xt_action_param *par, void *xt, const void *xt_info)
{
 par->target = xt;
 par->targinfo = xt_info;
 par->hotdrop = 0;
}
