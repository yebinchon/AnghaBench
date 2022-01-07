
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct srccode_state {scalar_t__ line; int * srcfile; } ;



__attribute__((used)) static inline void srccode_state_init(struct srccode_state *state)
{
 state->srcfile = ((void*)0);
 state->line = 0;
}
