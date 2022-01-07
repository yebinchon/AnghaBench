
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_netobj {int len; int data; } ;


 unsigned int OWNER_HASH_MASK ;
 unsigned int opaque_hashval (int ,int ) ;

__attribute__((used)) static unsigned int ownerstr_hashval(struct xdr_netobj *ownername)
{
 unsigned int ret;

 ret = opaque_hashval(ownername->data, ownername->len);
 return ret & OWNER_HASH_MASK;
}
