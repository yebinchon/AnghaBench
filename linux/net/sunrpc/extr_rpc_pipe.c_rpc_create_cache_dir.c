
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
struct dentry {int dummy; } ;
struct cache_detail {int dummy; } ;


 int rpc_cachedir_populate ;
 struct dentry* rpc_mkdir_populate (struct dentry*,char const*,int ,int *,int ,struct cache_detail*) ;

struct dentry *rpc_create_cache_dir(struct dentry *parent, const char *name,
        umode_t umode, struct cache_detail *cd)
{
 return rpc_mkdir_populate(parent, name, umode, ((void*)0),
   rpc_cachedir_populate, cd);
}
