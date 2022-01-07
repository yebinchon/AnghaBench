
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct nf_flowtable_type {int owner; } ;
struct net {int dummy; } ;


 int EAGAIN ;
 int ENOENT ;
 struct nf_flowtable_type const* ERR_PTR (int ) ;
 struct nf_flowtable_type* __nft_flowtable_type_get (int ) ;
 int lockdep_nfnl_nft_mutex_not_held () ;
 int nft_request_module (struct net*,char*,int ) ;
 scalar_t__ try_module_get (int ) ;

__attribute__((used)) static const struct nf_flowtable_type *
nft_flowtable_type_get(struct net *net, u8 family)
{
 const struct nf_flowtable_type *type;

 type = __nft_flowtable_type_get(family);
 if (type != ((void*)0) && try_module_get(type->owner))
  return type;

 lockdep_nfnl_nft_mutex_not_held();







 return ERR_PTR(-ENOENT);
}
