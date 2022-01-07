
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum lzma_state { ____Placeholder_lzma_state } lzma_state ;


 int STATE_LIT_LIT ;
 int STATE_LIT_SHORTREP ;
 int STATE_SHORTREP_LIT_LIT ;

__attribute__((used)) static inline void lzma_state_literal(enum lzma_state *state)
{
 if (*state <= STATE_SHORTREP_LIT_LIT)
  *state = STATE_LIT_LIT;
 else if (*state <= STATE_LIT_SHORTREP)
  *state -= 3;
 else
  *state -= 6;
}
