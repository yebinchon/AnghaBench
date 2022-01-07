
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vsock_sock {int * trans; } ;
struct TYPE_4__ {int elem; TYPE_1__* notify_ops; int lock; int * sk; } ;
struct TYPE_3__ {int (* socket_destruct ) (struct vsock_sock*) ;} ;


 int list_add (int *,int *) ;
 int schedule_work (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int stub1 (struct vsock_sock*) ;
 TYPE_2__* vmci_trans (struct vsock_sock*) ;
 int vmci_transport_cleanup_list ;
 int vmci_transport_cleanup_lock ;
 int vmci_transport_cleanup_work ;

__attribute__((used)) static void vmci_transport_destruct(struct vsock_sock *vsk)
{

 if (!vmci_trans(vsk))
  return;




 spin_lock_bh(&vmci_trans(vsk)->lock);
 vmci_trans(vsk)->sk = ((void*)0);
 spin_unlock_bh(&vmci_trans(vsk)->lock);

 if (vmci_trans(vsk)->notify_ops)
  vmci_trans(vsk)->notify_ops->socket_destruct(vsk);

 spin_lock_bh(&vmci_transport_cleanup_lock);
 list_add(&vmci_trans(vsk)->elem, &vmci_transport_cleanup_list);
 spin_unlock_bh(&vmci_transport_cleanup_lock);
 schedule_work(&vmci_transport_cleanup_work);

 vsk->trans = ((void*)0);
}
