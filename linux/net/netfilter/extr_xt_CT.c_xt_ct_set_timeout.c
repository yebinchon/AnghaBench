
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct xt_tgchk_param {int family; int net; } ;
struct nf_conntrack_l4proto {int l4proto; } ;
struct nf_conn {int dummy; } ;


 int EINVAL ;
 int EOPNOTSUPP ;
 struct nf_conntrack_l4proto* nf_ct_l4proto_find (int ) ;
 int nf_ct_set_timeout (int ,struct nf_conn*,int ,int ,char const*) ;
 int pr_info_ratelimited (char*) ;
 int xt_ct_find_proto (struct xt_tgchk_param const*) ;

__attribute__((used)) static int
xt_ct_set_timeout(struct nf_conn *ct, const struct xt_tgchk_param *par,
    const char *timeout_name)
{
 return -EOPNOTSUPP;

}
