
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct cmsghdr {int cmsg_type; int cmsg_len; } ;
typedef int __u16 ;


 scalar_t__ CMSG_DATA (struct cmsghdr*) ;
 int CMSG_LEN (int) ;
 int EINVAL ;


__attribute__((used)) static int __udp_cmsg_send(struct cmsghdr *cmsg, u16 *gso_size)
{
 switch (cmsg->cmsg_type) {
 case 128:
  if (cmsg->cmsg_len != CMSG_LEN(sizeof(__u16)))
   return -EINVAL;
  *gso_size = *(__u16 *)CMSG_DATA(cmsg);
  return 0;
 default:
  return -EINVAL;
 }
}
