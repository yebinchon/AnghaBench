
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bpf_user_rnd_state ;
 int prandom_init_once (int *) ;

void bpf_user_rnd_init_once(void)
{
 prandom_init_once(&bpf_user_rnd_state);
}
