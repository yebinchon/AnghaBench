
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rnd_state {int s1; int s2; int s3; int s4; } ;


 void* TAUSWORTHE (int,unsigned int,unsigned int,unsigned int,unsigned int) ;

u32 prandom_u32_state(struct rnd_state *state)
{

 state->s1 = ((state->s1 & 4294967294U) << 18U) ^ (((state->s1 << 6U) ^ state->s1) >> 13U);
 state->s2 = ((state->s2 & 4294967288U) << 2U) ^ (((state->s2 << 2U) ^ state->s2) >> 27U);
 state->s3 = ((state->s3 & 4294967280U) << 7U) ^ (((state->s3 << 13U) ^ state->s3) >> 21U);
 state->s4 = ((state->s4 & 4294967168U) << 13U) ^ (((state->s4 << 3U) ^ state->s4) >> 12U);

 return (state->s1 ^ state->s2 ^ state->s3 ^ state->s4);
}
