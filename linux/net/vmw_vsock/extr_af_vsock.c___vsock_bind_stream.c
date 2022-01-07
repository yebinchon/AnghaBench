
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct sockaddr_vm {scalar_t__ svm_port; int svm_cid; } ;
struct vsock_sock {struct sockaddr_vm local_addr; } ;


 int CAP_NET_BIND_SERVICE ;
 int EACCES ;
 int EADDRINUSE ;
 int EADDRNOTAVAIL ;
 scalar_t__ LAST_RESERVED_PORT ;
 unsigned int MAX_PORT_RETRIES ;
 scalar_t__ U32_MAX ;
 scalar_t__ VMADDR_PORT_ANY ;
 scalar_t__ __vsock_find_bound_socket (struct sockaddr_vm*) ;
 int __vsock_insert_bound (int ,struct vsock_sock*) ;
 int __vsock_remove_bound (struct vsock_sock*) ;
 int capable (int ) ;
 scalar_t__ prandom_u32_max (scalar_t__) ;
 int vsock_addr_init (struct sockaddr_vm*,int ,scalar_t__) ;
 int vsock_bound_sockets (struct sockaddr_vm*) ;

__attribute__((used)) static int __vsock_bind_stream(struct vsock_sock *vsk,
          struct sockaddr_vm *addr)
{
 static u32 port;
 struct sockaddr_vm new_addr;

 if (!port)
  port = LAST_RESERVED_PORT + 1 +
   prandom_u32_max(U32_MAX - LAST_RESERVED_PORT);

 vsock_addr_init(&new_addr, addr->svm_cid, addr->svm_port);

 if (addr->svm_port == VMADDR_PORT_ANY) {
  bool found = 0;
  unsigned int i;

  for (i = 0; i < MAX_PORT_RETRIES; i++) {
   if (port <= LAST_RESERVED_PORT)
    port = LAST_RESERVED_PORT + 1;

   new_addr.svm_port = port++;

   if (!__vsock_find_bound_socket(&new_addr)) {
    found = 1;
    break;
   }
  }

  if (!found)
   return -EADDRNOTAVAIL;
 } else {



  if (addr->svm_port <= LAST_RESERVED_PORT &&
      !capable(CAP_NET_BIND_SERVICE)) {
   return -EACCES;
  }

  if (__vsock_find_bound_socket(&new_addr))
   return -EADDRINUSE;
 }

 vsock_addr_init(&vsk->local_addr, new_addr.svm_cid, new_addr.svm_port);





 __vsock_remove_bound(vsk);
 __vsock_insert_bound(vsock_bound_sockets(&vsk->local_addr), vsk);

 return 0;
}
