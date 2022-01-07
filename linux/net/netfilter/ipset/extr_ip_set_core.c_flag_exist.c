
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nlmsghdr {int nlmsg_flags; } ;


 int IPSET_FLAG_EXIST ;
 int NLM_F_EXCL ;

__attribute__((used)) static inline u32
flag_exist(const struct nlmsghdr *nlh)
{
 return nlh->nlmsg_flags & NLM_F_EXCL ? 0 : IPSET_FLAG_EXIST;
}
