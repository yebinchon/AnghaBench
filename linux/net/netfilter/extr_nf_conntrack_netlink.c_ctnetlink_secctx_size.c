
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nf_conn {int secmark; } ;


 int nla_total_size (int) ;
 int security_secid_to_secctx (int ,int *,int*) ;

__attribute__((used)) static inline int ctnetlink_secctx_size(const struct nf_conn *ct)
{
 return 0;

}
