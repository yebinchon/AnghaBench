
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vsock_sock {int sk; int trans; } ;
struct vmci_transport {int dummy; } ;
struct TYPE_2__ {int queue_pair_max_size; int queue_pair_min_size; int queue_pair_size; int lock; int * sk; int elem; int * notify_ops; int detach_sub_id; scalar_t__ consume_size; scalar_t__ produce_size; int * qpair; void* qp_handle; void* dg_handle; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 void* VMCI_INVALID_HANDLE ;
 int VMCI_INVALID_ID ;
 int VMCI_TRANSPORT_DEFAULT_QP_SIZE ;
 int VMCI_TRANSPORT_DEFAULT_QP_SIZE_MAX ;
 int VMCI_TRANSPORT_DEFAULT_QP_SIZE_MIN ;
 int kmalloc (int,int ) ;
 int spin_lock_init (int *) ;
 TYPE_1__* vmci_trans (struct vsock_sock*) ;

__attribute__((used)) static int vmci_transport_socket_init(struct vsock_sock *vsk,
          struct vsock_sock *psk)
{
 vsk->trans = kmalloc(sizeof(struct vmci_transport), GFP_KERNEL);
 if (!vsk->trans)
  return -ENOMEM;

 vmci_trans(vsk)->dg_handle = VMCI_INVALID_HANDLE;
 vmci_trans(vsk)->qp_handle = VMCI_INVALID_HANDLE;
 vmci_trans(vsk)->qpair = ((void*)0);
 vmci_trans(vsk)->produce_size = vmci_trans(vsk)->consume_size = 0;
 vmci_trans(vsk)->detach_sub_id = VMCI_INVALID_ID;
 vmci_trans(vsk)->notify_ops = ((void*)0);
 INIT_LIST_HEAD(&vmci_trans(vsk)->elem);
 vmci_trans(vsk)->sk = &vsk->sk;
 spin_lock_init(&vmci_trans(vsk)->lock);
 if (psk) {
  vmci_trans(vsk)->queue_pair_size =
   vmci_trans(psk)->queue_pair_size;
  vmci_trans(vsk)->queue_pair_min_size =
   vmci_trans(psk)->queue_pair_min_size;
  vmci_trans(vsk)->queue_pair_max_size =
   vmci_trans(psk)->queue_pair_max_size;
 } else {
  vmci_trans(vsk)->queue_pair_size =
   VMCI_TRANSPORT_DEFAULT_QP_SIZE;
  vmci_trans(vsk)->queue_pair_min_size =
    VMCI_TRANSPORT_DEFAULT_QP_SIZE_MIN;
  vmci_trans(vsk)->queue_pair_max_size =
   VMCI_TRANSPORT_DEFAULT_QP_SIZE_MAX;
 }

 return 0;
}
