
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int srand (int ) ;
 int time (int *) ;

__attribute__((used)) static inline void bpf_semi_rand_init(void)
{
 srand(time(((void*)0)));
}
