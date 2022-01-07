
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;


 scalar_t__ HASH_ALGO_MD5 ;
 scalar_t__ HASH_ALGO_SHA1 ;

__attribute__((used)) static bool ima_template_hash_algo_allowed(u8 algo)
{
 if (algo == HASH_ALGO_SHA1 || algo == HASH_ALGO_MD5)
  return 1;

 return 0;
}
