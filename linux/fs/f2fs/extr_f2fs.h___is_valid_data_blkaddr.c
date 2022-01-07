
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ block_t ;


 scalar_t__ NEW_ADDR ;
 scalar_t__ NULL_ADDR ;

__attribute__((used)) static inline bool __is_valid_data_blkaddr(block_t blkaddr)
{
 if (blkaddr == NEW_ADDR || blkaddr == NULL_ADDR)
  return 0;
 return 1;
}
