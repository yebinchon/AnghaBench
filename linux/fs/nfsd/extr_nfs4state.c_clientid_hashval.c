
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;


 unsigned int CLIENT_HASH_MASK ;

__attribute__((used)) static unsigned int clientid_hashval(u32 id)
{
 return id & CLIENT_HASH_MASK;
}
