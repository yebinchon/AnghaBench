
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;


 scalar_t__ J1939_IDLE_ADDR ;

__attribute__((used)) static inline bool j1939_address_is_idle(u8 addr)
{
 return addr == J1939_IDLE_ADDR;
}
