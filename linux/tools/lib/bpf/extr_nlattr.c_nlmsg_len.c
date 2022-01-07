
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlmsghdr {int nlmsg_len; } ;


 int NLMSG_HDRLEN ;

__attribute__((used)) static inline int nlmsg_len(const struct nlmsghdr *nlh)
{
 return nlh->nlmsg_len - NLMSG_HDRLEN;
}
