
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int s32 ;


 int EADDRINUSE ;
 int EHOSTUNREACH ;
 int EINVAL ;
 int ENOBUFS ;
 int ENOMEM ;
 int EPERM ;
__attribute__((used)) static s32 vmci_transport_error_to_vsock_error(s32 vmci_error)
{
 switch (vmci_error) {
 case 129:
  return -ENOMEM;
 case 133:
 case 134:
  return -EADDRINUSE;
 case 130:
  return -EPERM;
 case 128:
  return -ENOBUFS;
 case 131:
  return -EHOSTUNREACH;
 case 132:
 default:
  break;
 }
 return -EINVAL;
}
