
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_vm {int dummy; } ;
struct sockaddr {int dummy; } ;


 int EFAULT ;
 int vsock_addr_validate (struct sockaddr_vm*) ;

int vsock_addr_cast(const struct sockaddr *addr,
      size_t len, struct sockaddr_vm **out_addr)
{
 if (len < sizeof(**out_addr))
  return -EFAULT;

 *out_addr = (struct sockaddr_vm *)addr;
 return vsock_addr_validate(*out_addr);
}
