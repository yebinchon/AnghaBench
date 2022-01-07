
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rhashtable_params {int nelem_hint; scalar_t__ min_size; } ;


 int HASH_DEFAULT_SIZE ;
 size_t max (int ,unsigned long) ;
 int roundup_pow_of_two (int) ;

__attribute__((used)) static size_t rounded_hashtable_size(const struct rhashtable_params *params)
{
 size_t retsize;

 if (params->nelem_hint)
  retsize = max(roundup_pow_of_two(params->nelem_hint * 4 / 3),
         (unsigned long)params->min_size);
 else
  retsize = max(HASH_DEFAULT_SIZE,
         (unsigned long)params->min_size);

 return retsize;
}
