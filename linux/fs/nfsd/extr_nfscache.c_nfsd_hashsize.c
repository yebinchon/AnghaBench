
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int TARGET_BUCKET_SIZE ;
 unsigned int roundup_pow_of_two (unsigned int) ;

__attribute__((used)) static unsigned int
nfsd_hashsize(unsigned int limit)
{
 return roundup_pow_of_two(limit / TARGET_BUCKET_SIZE);
}
