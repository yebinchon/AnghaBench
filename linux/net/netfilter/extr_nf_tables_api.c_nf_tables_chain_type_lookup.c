
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct nlattr {int dummy; } ;
struct nft_chain_type {int dummy; } ;
struct net {int dummy; } ;


 int EAGAIN ;
 int ENOENT ;
 struct nft_chain_type const* ERR_PTR (int ) ;
 struct nft_chain_type* __nf_tables_chain_type_lookup (struct nlattr const*,int ) ;
 int lockdep_nfnl_nft_mutex_not_held () ;
 int nft_request_module (struct net*,char*,int ,int ,char const*) ;
 scalar_t__ nla_data (struct nlattr const*) ;
 int nla_len (struct nlattr const*) ;

__attribute__((used)) static const struct nft_chain_type *
nf_tables_chain_type_lookup(struct net *net, const struct nlattr *nla,
       u8 family, bool autoload)
{
 const struct nft_chain_type *type;

 type = __nf_tables_chain_type_lookup(nla, family);
 if (type != ((void*)0))
  return type;

 lockdep_nfnl_nft_mutex_not_held();
 return ERR_PTR(-ENOENT);
}
