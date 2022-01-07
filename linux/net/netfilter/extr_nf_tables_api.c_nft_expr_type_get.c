
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct nlattr {int dummy; } ;
struct nft_expr_type {int owner; } ;
struct net {int dummy; } ;


 int EAGAIN ;
 int EINVAL ;
 int ENOENT ;
 struct nft_expr_type const* ERR_PTR (int ) ;
 struct nft_expr_type* __nft_expr_type_get (int ,struct nlattr*) ;
 int lockdep_nfnl_nft_mutex_not_held () ;
 int nft_expr_type_request_module (struct net*,int ,struct nlattr*) ;
 int nft_request_module (struct net*,char*,int ,char*) ;
 scalar_t__ nla_data (struct nlattr*) ;
 int nla_len (struct nlattr*) ;
 scalar_t__ try_module_get (int ) ;

__attribute__((used)) static const struct nft_expr_type *nft_expr_type_get(struct net *net,
           u8 family,
           struct nlattr *nla)
{
 const struct nft_expr_type *type;

 if (nla == ((void*)0))
  return ERR_PTR(-EINVAL);

 type = __nft_expr_type_get(family, nla);
 if (type != ((void*)0) && try_module_get(type->owner))
  return type;

 lockdep_nfnl_nft_mutex_not_held();
 return ERR_PTR(-ENOENT);
}
