
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
struct dentry {int dummy; } ;
struct cache_detail {struct dentry* pipefs; } ;


 scalar_t__ IS_ERR (struct dentry*) ;
 int PTR_ERR (struct dentry*) ;
 struct dentry* rpc_create_cache_dir (struct dentry*,char const*,int ,struct cache_detail*) ;

int sunrpc_cache_register_pipefs(struct dentry *parent,
     const char *name, umode_t umode,
     struct cache_detail *cd)
{
 struct dentry *dir = rpc_create_cache_dir(parent, name, umode, cd);
 if (IS_ERR(dir))
  return PTR_ERR(dir);
 cd->pipefs = dir;
 return 0;
}
