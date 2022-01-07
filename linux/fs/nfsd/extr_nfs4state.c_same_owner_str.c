
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xdr_netobj {scalar_t__ len; int data; } ;
struct TYPE_2__ {scalar_t__ len; int data; } ;
struct nfs4_stateowner {TYPE_1__ so_owner; } ;


 scalar_t__ memcmp (int ,int ,scalar_t__) ;

__attribute__((used)) static int
same_owner_str(struct nfs4_stateowner *sop, struct xdr_netobj *owner)
{
 return (sop->so_owner.len == owner->len) &&
  0 == memcmp(sop->so_owner.data, owner->data, owner->len);
}
