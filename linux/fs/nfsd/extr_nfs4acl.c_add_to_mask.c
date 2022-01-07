
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int allow; } ;
struct posix_acl_state {TYPE_1__ mask; } ;
struct posix_ace_state {int allow; } ;



__attribute__((used)) static inline void add_to_mask(struct posix_acl_state *state, struct posix_ace_state *astate)
{
 state->mask.allow |= astate->allow;
}
