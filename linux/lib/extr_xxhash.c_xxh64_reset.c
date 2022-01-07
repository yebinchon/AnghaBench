
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
struct xxh64_state {scalar_t__ v4; scalar_t__ v3; scalar_t__ v2; scalar_t__ v1; } ;
typedef int state ;


 scalar_t__ const PRIME64_1 ;
 scalar_t__ const PRIME64_2 ;
 int memcpy (struct xxh64_state*,struct xxh64_state*,int) ;
 int memset (struct xxh64_state*,int ,int) ;

void xxh64_reset(struct xxh64_state *statePtr, const uint64_t seed)
{

 struct xxh64_state state;

 memset(&state, 0, sizeof(state));
 state.v1 = seed + PRIME64_1 + PRIME64_2;
 state.v2 = seed + PRIME64_2;
 state.v3 = seed + 0;
 state.v4 = seed - PRIME64_1;
 memcpy(statePtr, &state, sizeof(state));
}
