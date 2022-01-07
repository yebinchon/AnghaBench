
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned long tv_nsec; } ;
typedef TYPE_1__ snd_seq_real_time_t ;


 int snd_seq_sanity_real_time (TYPE_1__*) ;

__attribute__((used)) static inline void snd_seq_inc_time_nsec(snd_seq_real_time_t *tm, unsigned long nsec)
{
 tm->tv_nsec += nsec;
 snd_seq_sanity_real_time(tm);
}
