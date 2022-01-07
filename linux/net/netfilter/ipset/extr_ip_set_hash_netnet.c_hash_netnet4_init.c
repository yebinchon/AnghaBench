
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hash_netnet4_elem {void** cidr; } ;


 void* HOST_MASK ;

__attribute__((used)) static void
hash_netnet4_init(struct hash_netnet4_elem *e)
{
 e->cidr[0] = HOST_MASK;
 e->cidr[1] = HOST_MASK;
}
