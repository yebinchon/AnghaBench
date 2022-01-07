
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_storage {int ss_family; } ;
struct sockaddr_in6 {int sin6_port; int sin6_addr; } ;
struct sockaddr_in {int sin_port; int sin_addr; } ;
struct ceph_entity_addr {int type; struct sockaddr_storage in_addr; } ;


 int ADDR_STR_COUNT_MASK ;


 int MAX_ADDR_STR_LEN ;
 char** addr_str ;
 int addr_str_seq ;
 int atomic_inc_return (int *) ;
 int le32_to_cpu (int ) ;
 int ntohs (int ) ;
 int snprintf (char*,int ,char*,int,...) ;

const char *ceph_pr_addr(const struct ceph_entity_addr *addr)
{
 int i;
 char *s;
 struct sockaddr_storage ss = addr->in_addr;
 struct sockaddr_in *in4 = (struct sockaddr_in *)&ss;
 struct sockaddr_in6 *in6 = (struct sockaddr_in6 *)&ss;

 i = atomic_inc_return(&addr_str_seq) & ADDR_STR_COUNT_MASK;
 s = addr_str[i];

 switch (ss.ss_family) {
 case 129:
  snprintf(s, MAX_ADDR_STR_LEN, "(%d)%pI4:%hu",
    le32_to_cpu(addr->type), &in4->sin_addr,
    ntohs(in4->sin_port));
  break;

 case 128:
  snprintf(s, MAX_ADDR_STR_LEN, "(%d)[%pI6c]:%hu",
    le32_to_cpu(addr->type), &in6->sin6_addr,
    ntohs(in6->sin6_port));
  break;

 default:
  snprintf(s, MAX_ADDR_STR_LEN, "(unknown sockaddr family %hu)",
    ss.ss_family);
 }

 return s;
}
