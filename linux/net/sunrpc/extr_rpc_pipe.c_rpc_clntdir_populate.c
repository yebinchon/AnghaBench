
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int dummy; } ;


 int RPCAUTH_EOF ;
 int RPCAUTH_info ;
 int authfiles ;
 int rpc_populate (struct dentry*,int ,int ,int ,void*) ;

__attribute__((used)) static int rpc_clntdir_populate(struct dentry *dentry, void *private)
{
 return rpc_populate(dentry,
       authfiles, RPCAUTH_info, RPCAUTH_EOF,
       private);
}
