
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;


 int CREDITS_PER_JIFFY_BYTES ;
 int HZ ;

__attribute__((used)) static u32 user2credits_byte(u32 user)
{
 u64 us = user;
 us *= HZ * CREDITS_PER_JIFFY_BYTES;
 return (u32) (us >> 32);
}
