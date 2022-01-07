
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;


 scalar_t__ DEFAULT_EMPTY_SCAN_SIZE ;

__attribute__((used)) static inline uint32_t EMPTY_SCAN_SIZE(uint32_t sector_size) {
 if (sector_size < DEFAULT_EMPTY_SCAN_SIZE)
  return sector_size;
 else
  return DEFAULT_EMPTY_SCAN_SIZE;
}
