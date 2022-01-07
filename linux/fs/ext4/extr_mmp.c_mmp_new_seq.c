
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 scalar_t__ EXT4_MMP_SEQ_MAX ;
 scalar_t__ prandom_u32 () ;

__attribute__((used)) static unsigned int mmp_new_seq(void)
{
 u32 new_seq;

 do {
  new_seq = prandom_u32();
 } while (new_seq > EXT4_MMP_SEQ_MAX);

 return new_seq;
}
