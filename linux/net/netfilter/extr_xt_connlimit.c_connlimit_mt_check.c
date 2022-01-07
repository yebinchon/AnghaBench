
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xt_mtchk_param {scalar_t__ family; int net; struct xt_connlimit_info* matchinfo; } ;
struct xt_connlimit_info {int data; } ;
struct in_addr {int dummy; } ;
struct in6_addr {int dummy; } ;


 scalar_t__ NFPROTO_IPV6 ;
 int PTR_ERR_OR_ZERO (int ) ;
 int nf_conncount_init (int ,scalar_t__,unsigned int) ;

__attribute__((used)) static int connlimit_mt_check(const struct xt_mtchk_param *par)
{
 struct xt_connlimit_info *info = par->matchinfo;
 unsigned int keylen;

 keylen = sizeof(u32);
 if (par->family == NFPROTO_IPV6)
  keylen += sizeof(struct in6_addr);
 else
  keylen += sizeof(struct in_addr);


 info->data = nf_conncount_init(par->net, par->family, keylen);

 return PTR_ERR_OR_ZERO(info->data);
}
