
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_netobj {int data; } ;


 unsigned int CLIENT_HASH_MASK ;
 unsigned int opaque_hashval (int ,int) ;

__attribute__((used)) static unsigned int clientstr_hashval(struct xdr_netobj name)
{
 return opaque_hashval(name.data, 8) & CLIENT_HASH_MASK;
}
