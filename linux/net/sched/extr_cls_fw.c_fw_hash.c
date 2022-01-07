
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int HTSIZE ;

__attribute__((used)) static u32 fw_hash(u32 handle)
{
 handle ^= (handle >> 16);
 handle ^= (handle >> 8);
 return handle % HTSIZE;
}
