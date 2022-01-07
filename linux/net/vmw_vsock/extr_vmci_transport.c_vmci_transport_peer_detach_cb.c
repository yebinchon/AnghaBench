
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct vmci_transport {int lock; int sk; int qp_handle; } ;
struct vmci_event_payload_qp {int handle; } ;
struct vmci_event_data {int dummy; } ;


 int bh_lock_sock (int ) ;
 int bh_unlock_sock (int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 struct vmci_event_payload_qp* vmci_event_data_const_payload (struct vmci_event_data const*) ;
 int vmci_handle_is_equal (int ,int ) ;
 scalar_t__ vmci_handle_is_invalid (int ) ;
 int vmci_transport_handle_detach (int ) ;

__attribute__((used)) static void vmci_transport_peer_detach_cb(u32 sub_id,
       const struct vmci_event_data *e_data,
       void *client_data)
{
 struct vmci_transport *trans = client_data;
 const struct vmci_event_payload_qp *e_payload;

 e_payload = vmci_event_data_const_payload(e_data);




 if (vmci_handle_is_invalid(e_payload->handle) ||
     !vmci_handle_is_equal(trans->qp_handle, e_payload->handle))
  return;







 spin_lock_bh(&trans->lock);
 if (!trans->sk)
  goto out;




 bh_lock_sock(trans->sk);

 vmci_transport_handle_detach(trans->sk);

 bh_unlock_sock(trans->sk);
 out:
 spin_unlock_bh(&trans->lock);
}
