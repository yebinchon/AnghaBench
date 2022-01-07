
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ __u8 ;


 scalar_t__ ADDR_LE_DEV_PUBLIC ;
 scalar_t__ BDADDR_LE_PUBLIC ;
 scalar_t__ BDADDR_LE_RANDOM ;

__attribute__((used)) static inline __u8 bdaddr_type(__u8 type)
{
 if (type == ADDR_LE_DEV_PUBLIC)
  return BDADDR_LE_PUBLIC;
 else
  return BDADDR_LE_RANDOM;
}
