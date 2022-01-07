
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct __kernel_timex {scalar_t__ stbcnt; scalar_t__ errcnt; scalar_t__ calcnt; scalar_t__ jitcnt; scalar_t__ stabil; scalar_t__ shift; scalar_t__ jitter; scalar_t__ ppsfreq; } ;



__attribute__((used)) static inline void pps_fill_timex(struct __kernel_timex *txc)
{

 txc->ppsfreq = 0;
 txc->jitter = 0;
 txc->shift = 0;
 txc->stabil = 0;
 txc->jitcnt = 0;
 txc->calcnt = 0;
 txc->errcnt = 0;
 txc->stbcnt = 0;
}
