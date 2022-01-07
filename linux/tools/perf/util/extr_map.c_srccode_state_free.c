
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct srccode_state {scalar_t__ line; int srcfile; } ;


 int zfree (int *) ;

void srccode_state_free(struct srccode_state *state)
{
 zfree(&state->srcfile);
 state->line = 0;
}
