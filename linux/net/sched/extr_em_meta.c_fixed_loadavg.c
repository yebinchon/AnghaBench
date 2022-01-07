
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FIXED_1 ;
 int FSHIFT ;

__attribute__((used)) static inline unsigned long fixed_loadavg(int load)
{
 int rnd_load = load + (FIXED_1/200);
 int rnd_frac = ((rnd_load & (FIXED_1-1)) * 100) >> FSHIFT;

 return ((rnd_load >> FSHIFT) * 100) + rnd_frac;
}
