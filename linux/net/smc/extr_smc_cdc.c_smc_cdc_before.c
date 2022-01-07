
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
typedef scalar_t__ s16 ;



__attribute__((used)) static inline bool smc_cdc_before(u16 seq1, u16 seq2)
{
 return (s16)(seq1 - seq2) < 0;
}
