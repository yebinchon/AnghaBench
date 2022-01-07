
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


union hvs_service_id {void* srv_id; int svm_port; } ;
struct TYPE_3__ {int svm_port; } ;
struct TYPE_4__ {int svm_port; } ;
struct vsock_sock {TYPE_1__ remote_addr; TYPE_2__ local_addr; struct hvsock* trans; } ;
struct hvsock {void* host_srv_id; void* vm_srv_id; } ;


 void* srv_id_template ;
 int vmbus_send_tl_connect_request (void**,void**) ;

__attribute__((used)) static int hvs_connect(struct vsock_sock *vsk)
{
 union hvs_service_id vm, host;
 struct hvsock *h = vsk->trans;

 vm.srv_id = srv_id_template;
 vm.svm_port = vsk->local_addr.svm_port;
 h->vm_srv_id = vm.srv_id;

 host.srv_id = srv_id_template;
 host.svm_port = vsk->remote_addr.svm_port;
 h->host_srv_id = host.srv_id;

 return vmbus_send_tl_connect_request(&h->vm_srv_id, &h->host_srv_id);
}
