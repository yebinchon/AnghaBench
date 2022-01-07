
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct seg6_hmac_algo {scalar_t__ alg_id; } ;


 int ARRAY_SIZE (struct seg6_hmac_algo*) ;
 struct seg6_hmac_algo* hmac_algos ;

__attribute__((used)) static struct seg6_hmac_algo *__hmac_get_algo(u8 alg_id)
{
 struct seg6_hmac_algo *algo;
 int i, alg_count;

 alg_count = ARRAY_SIZE(hmac_algos);
 for (i = 0; i < alg_count; i++) {
  algo = &hmac_algos[i];
  if (algo->alg_id == alg_id)
   return algo;
 }

 return ((void*)0);
}
