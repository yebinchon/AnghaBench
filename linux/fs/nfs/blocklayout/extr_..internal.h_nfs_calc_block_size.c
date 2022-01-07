
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef scalar_t__ blkcnt_t ;


 scalar_t__ ULONG_MAX ;

__attribute__((used)) static inline blkcnt_t nfs_calc_block_size(u64 tsize)
{
 blkcnt_t used = (tsize + 511) >> 9;
 return (used > ULONG_MAX) ? ULONG_MAX : used;
}
