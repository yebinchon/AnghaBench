
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct vsock_sock {TYPE_1__* owner; scalar_t__ trusted; } ;
struct TYPE_2__ {int uid; } ;


 scalar_t__ vmci_is_context_owner (int ,int ) ;

__attribute__((used)) static bool vmci_transport_is_trusted(struct vsock_sock *vsock, u32 peer_cid)
{
 return vsock->trusted ||
        vmci_is_context_owner(peer_cid, vsock->owner->uid);
}
