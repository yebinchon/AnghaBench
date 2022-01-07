
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct vmci_qp {int dummy; } ;
struct vmci_handle {int dummy; } ;


 int VMCI_ERROR_NO_ACCESS ;
 int VMCI_NO_PRIVILEGE_FLAGS ;
 int VMCI_PRIVILEGE_FLAG_TRUSTED ;
 int pr_err (char*,int) ;
 int vmci_qpair_alloc (struct vmci_qp**,struct vmci_handle*,int ,int ,int ,int ,int ) ;
 int vmci_transport_error_to_vsock_error (int) ;

__attribute__((used)) static int
vmci_transport_queue_pair_alloc(struct vmci_qp **qpair,
    struct vmci_handle *handle,
    u64 produce_size,
    u64 consume_size,
    u32 peer, u32 flags, bool trusted)
{
 int err = 0;

 if (trusted) {




  err = vmci_qpair_alloc(qpair, handle, produce_size,
           consume_size,
           peer, flags,
           VMCI_PRIVILEGE_FLAG_TRUSTED);
  if (err != VMCI_ERROR_NO_ACCESS)
   goto out;

 }

 err = vmci_qpair_alloc(qpair, handle, produce_size, consume_size,
          peer, flags, VMCI_NO_PRIVILEGE_FLAGS);
out:
 if (err < 0) {
  pr_err("Could not attach to queue pair with %d\n",
         err);
  err = vmci_transport_error_to_vsock_error(err);
 }

 return err;
}
