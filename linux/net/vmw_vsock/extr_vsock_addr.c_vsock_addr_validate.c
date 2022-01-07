
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_vm {scalar_t__ svm_family; scalar_t__* svm_zero; } ;


 scalar_t__ AF_VSOCK ;
 int EAFNOSUPPORT ;
 int EFAULT ;
 int EINVAL ;

int vsock_addr_validate(const struct sockaddr_vm *addr)
{
 if (!addr)
  return -EFAULT;

 if (addr->svm_family != AF_VSOCK)
  return -EAFNOSUPPORT;

 if (addr->svm_zero[0] != 0)
  return -EINVAL;

 return 0;
}
