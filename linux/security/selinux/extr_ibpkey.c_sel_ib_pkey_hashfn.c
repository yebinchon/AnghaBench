
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int SEL_PKEY_HASH_SIZE ;

__attribute__((used)) static unsigned int sel_ib_pkey_hashfn(u16 pkey)
{
 return (pkey & (SEL_PKEY_HASH_SIZE - 1));
}
