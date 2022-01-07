
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct smp_chan {int * link_key; int tfm_cmac; int * tk; int flags; } ;


 int GFP_KERNEL ;
 int SMP_FLAG_CT2 ;
 int * kzalloc (int,int ) ;
 int kzfree (int *) ;
 scalar_t__ smp_h6 (int ,int *,int const*,int *) ;
 scalar_t__ smp_h7 (int ,int *,int const*,int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void sc_generate_link_key(struct smp_chan *smp)
{

 const u8 lebr[4] = { 0x72, 0x62, 0x65, 0x6c };

 smp->link_key = kzalloc(16, GFP_KERNEL);
 if (!smp->link_key)
  return;

 if (test_bit(SMP_FLAG_CT2, &smp->flags)) {

  const u8 salt[16] = { 0x31, 0x70, 0x6d, 0x74 };

  if (smp_h7(smp->tfm_cmac, smp->tk, salt, smp->link_key)) {
   kzfree(smp->link_key);
   smp->link_key = ((void*)0);
   return;
  }
 } else {

  const u8 tmp1[4] = { 0x31, 0x70, 0x6d, 0x74 };

  if (smp_h6(smp->tfm_cmac, smp->tk, tmp1, smp->link_key)) {
   kzfree(smp->link_key);
   smp->link_key = ((void*)0);
   return;
  }
 }

 if (smp_h6(smp->tfm_cmac, smp->link_key, lebr, smp->link_key)) {
  kzfree(smp->link_key);
  smp->link_key = ((void*)0);
  return;
 }
}
