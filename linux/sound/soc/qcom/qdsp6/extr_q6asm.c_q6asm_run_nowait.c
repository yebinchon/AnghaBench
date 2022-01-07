
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct audio_client {int dummy; } ;


 int __q6asm_run (struct audio_client*,int ,int ,int ,int) ;

int q6asm_run_nowait(struct audio_client *ac, uint32_t flags,
       uint32_t msw_ts, uint32_t lsw_ts)
{
 return __q6asm_run(ac, flags, msw_ts, lsw_ts, 0);
}
