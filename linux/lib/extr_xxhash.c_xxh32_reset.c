
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct xxh32_state {scalar_t__ v4; scalar_t__ v3; scalar_t__ v2; scalar_t__ v1; } ;
typedef int state ;


 scalar_t__ const PRIME32_1 ;
 scalar_t__ const PRIME32_2 ;
 int memcpy (struct xxh32_state*,struct xxh32_state*,int) ;
 int memset (struct xxh32_state*,int ,int) ;

void xxh32_reset(struct xxh32_state *statePtr, const uint32_t seed)
{

 struct xxh32_state state;

 memset(&state, 0, sizeof(state));
 state.v1 = seed + PRIME32_1 + PRIME32_2;
 state.v2 = seed + PRIME32_2;
 state.v3 = seed + 0;
 state.v4 = seed - PRIME32_1;
 memcpy(statePtr, &state, sizeof(state));
}
